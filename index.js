const express = require("express");
const request = require("request");
const fetch = require("node-fetch");
const LanguageTranslatorV3 = require('ibm-watson/language-translator/v3');
const { IamAuthenticator } = require('ibm-watson/auth');
const mysql = require("mysql");
const app = express();

app.set("view engine", "ejs");
app.use(express.static(__dirname + "/public"));

//Setting up IBM Translator

const languageTranslator = new LanguageTranslatorV3({
    version: '2018-05-01',
    authenticator: new IamAuthenticator({
      apikey: "YOUR_API_KEY", //Insert your ibm-watson API key here
    }),
    serviceUrl: 'YOUR_SERVICE_URL',//Insert your ibm-watson serviceUrl here

    //Disabling SSL verification as per ibm-watson documentation
    disableSslVerification: true
  });

// End of Translation setup


// Setting up MySql Database

//Creating database connection
//NOTE: Please Insert credentials as per your mysql local database for database schema refer to 'MySQL Database Schema' Folder
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Password',
  database: 'testdb',  //name of your local database
  insecureAuth: 'true'
});

//Connecting to MySQL Database
db.connect((err) =>{
  if(err){
    console.log(err);
  }else{
    console.log("MySql Connected...");
  }
});

//End of MySql Database setup


//Setting up routes

//Main Application interface route
app.get("/", (req, res)=>{

    if(res.statusCode == 200){
      //render Front.ejs file
      res.render("Front");
    }else{
      console.log("Error in rendering Front.ejs");
    }
});

// API call  route
app.get("/query", (req,res)=>{

  if(res.statusCode == 200){

     //recieve InputText, Source and target language from Front.ejs form
     var query = req.query.translate; // InputText
     var from = req.query.from; // Source language
     var to = req.query.to; // target language
 
     
 //Actual translation request
 
 // Sending API call with input parameters
 const translateParams = {
   text: query, // Inserting InputText to ibm-watson API
 
   modelId: from + "-" + to // Inserting source and target language to ibm-watson API
 };  
 
 // Receiving Translated text JSON object from ibm-watson API
 languageTranslator.translate(translateParams)
 .then(translationResult => {
 
   // Extracting translated text from received JSON object
   var translated = translationResult.result.translations[0].translation;
   
   // Passing translated text to result.ejs file and rendering it
   res.render("result", {result: translated});
   
   
 // Inserting Data into MySql Table
 
 // Making sql query
 // Refer to 'MySQL Database Schema' folder for database schema
 // Table Schema: Column 1 = sourceLaguage, Column 2 = InputText, Column 3 = targetLanguage, Column 4 = OutputText;
 var sql = "INSERT INTO new_translation_table VALUES('" +  from + "', '" + query + "', "  + "'" + to + "', " + "'" + translated + "'" + ");"
 //                Here new_translation_table is the name of your MySQL Table
 
 db.query(sql, (err, result, fields)=>{
   if(err){
     console.log(err)
   }else{
     console.log("Insert Query Successful"); //PLESE COMMENT THIS CODE BEFORE RUNNING 'npm test' to avoid warnings
     console.log(result);                    //PLESE COMMENT THIS CODE BEFORE RUNNING 'npm test' to avoid warnings
     
     //ending database connection
    db.end();                                //PLESE COMMENT THIS CODE BEFORE RUNNING 'npm test' to avoid warnings
   }
 })
     
 
 })
 
 // Handling errors
 .catch(err => {
   console.log('error:', err);

 });

  }else{
    console.log("Error in rendering result.ejs");
  }

});

// Assigning  IP and PORT to the application
const server = app.listen(3000, process.env.IP, ()=>{
console.log("Translation API has started");
});

//Exporting server for testing
module.exports = server;