# Setup Instructions

## Requirements
- Node.js v24+
- Oracle SQL Developer Account
- Oracle Database Credentials
- Oracle Instant Client (required for oracledb driver)
- npm install express oracledb dotenv cors


## Run the Backend
1. Install dependencies:
   pip install fastapi uvicorn oracledb

2. Configure Environment Variables
  DB_USER=gbutler3486
  DB_PASSWORD=your_password_here
  DB_CONNECT_STRING=oracle.monroeu.edu:1521/oracle.monroecollege.edu
  PORT=3000

3. Start server:
   node app.js

4. API docs:
   http://localhost:8000/docs

## Load SQL Files
1. Run schema.sql in Oracle SQL Developer
2. Run sample_data.sql
3. Use reset.sql to rebuild database

## Configure Database Connection
Modify db/oracle_connection.js:
require("dotenv").config();
const oracledb = require("oracledb");

oracledb.initOracleClient();

const db = {
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  connectString: process.env.DB_CONNECT_STRING,
};

module.exports = { oracledb, db };

Test Connection 
const { oracledb, db } = require("./db/oracle");

async function test() {
  try {
    const connection = await oracledb.getConnection(db);
    console.log("Connected to Oracle!");
    await connection.close();
  } catch (error) {
    console.error("Connection Error:", error);
  }
}

test();

dsn="oracle.monroeu.edu:1521/oracle.monroecollege.edu"
