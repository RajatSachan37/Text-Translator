
# Text Translation Application

It is a Web Application which translate text from one language to another.\
Deployed Link: https://text-translator.cyclic.app

## Tools/Technologies Used

* HTML                                              
* CSS
* Bootstrap
* JavaScript
* jQuery
* Node.js
* Express.js
* EJS
* IBM Watson Language Translator API
* MySQL Database
* Jest & SuperTest (for testing of application)



## Installation

This application can easily be installed in three steps:

  Step 1:
  Open index.js file and insert your 'IBM-Watson Language Translator' api key and service URL at appropriate positions in the code.

  Step 2:
  Set Up MySQL database, server and Workbench locally and insert your  Database credentials at proper position in the index.js file.
  
  Step 3:
  Create a MySQL table inside your database using MySQL Workbench. Please refer to 'MySQL Database Schema' folder provided in this repository for database Schema.
  The Database consists of four columns namely 'from', 'inputText', 'to', and 'outputText' which represents 'source language', 'text to be translated' , 'target language', and 'translated text' respectively.


## Usage

In your console run this command:
```
node ./index.js
```
This will start the node.js server locally in your machine.
Now, open a web browser and visit:
```
http://localhost:3000/
```
Note that it is 'http' and not 'https'. 
Make sure you are connected to the Internet.
  
## Working/Logic

This application consists of two GET routes namely "/" and "/query".
In the root route i.e. ("/") Front.ejs file is rendered, this file includes a form with a textbox, two option buttons (for selecting source and target language), and a submit button (Translate button).
When a user enters some text, selects source and target language and hits Translate button a GET request is made to "/query" route along with input parameters.

In the "/query" route an API call is made to 'IBM-Watson Language Translator' along with input parameters.
The 'IBM-Watson Language Translator' receives these input parameters and sends a JSON object as a response.
Now the translated text is extracted from this JSON object and is passed to result.ejs file. This file is then rendered and translated text appears.

Now in the same route a SQL query is made which takes these input parameters along with translated text and saves all of them into a MySQL table.

## Further Improvements
It would be a great Idea to search the Database for translated text first using the input parameters instead of making an API call every time the user hits translate button.
If the Database doesn't includes translated text for a given set of input parameters only then an API call should be made. Overtime, as our database increases in size less and less API calls will be made.

In total 'IBM-Watson Language Translator' supports 62 languages which means more languages can be added to this application as per the requirement.
