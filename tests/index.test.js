const requests = require("supertest");
let server;

//Test inputs
var inputText = "Hello";
var src = 'en';
var trg = ['hi','bn', 'gu', 'ne', 'ta', 'te', 'ur', 'es', 'ar', 'fr', 'ru', 'pt', 'id', 'zh', 'vi', 'it', 'ja', 'ko', 'tr', 'ro', 'pl'];

jest.setTimeout(30000);

describe("/", ()=>{
    beforeEach(() => {server = require("../index"); })
    afterEach(() => {server.close();})
    describe("GET /", ()=>{
        it("Should render Front.ejs file", async ()=>{
        const res = await requests(server).get("/");
        expect(res.status).toBe(200);

        })
    })


    
        describe("GET /query", ()=>{
            it("Should render result.ejs file for all input test cases", async ()=>{
                {
                    
                    for(var i=0;i<=trg.length-1;i++){
                        console.log(i);
                    console.log(trg[i]);
                    var res = await requests(server).get("/query?translate=" + inputText + "&from=" + src +"&to=" + trg[i]);
                    
                    expect(res.status).toBe(200);
                    }
                } 
            })
        })

    
    
  
})