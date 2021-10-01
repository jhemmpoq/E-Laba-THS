const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();

app.use(cors());
app.use(bodyParser.json());

app.listen(3000, () => {
  console.log(`Server is running.`);
});

const Pool = require("pg").Pool;
const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "issue_tracker",
  password: "password",
  port: 5432
});

app.post("/api/v1/issues", (req, res) => {
    const { label, status, priority } = req.body;
  
    pool.query(
      "INSERT INTO issues (label, status, priority) VALUES ($1, $2, $3)",
      [label, status, priority],
      (error, results) => {
        if (error) {
          throw error;
        }
  
        res.sendStatus(201);
      }
    );
  });