const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();

app.use(cors());
app.use(bodyParser.json());

app.listen(8000, () => {
  console.log(`Server is running.`);
});

const Pool = require("pg").Pool;
const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "e-laundry",
  password: "0131",
  port: 5432
});

app.post("/api/v1/orders", (req, res) => {
    const { label, status, priority } = req.body;
  
    pool.query(
      "SELECT * FROM orders",
      [label, status, priority],
      (error, results) => {
        if (error) {
          throw error; 
        }
  
        res.sendStatus(201);
      }
    );
  });