const sqlite3 = require('sqlite3').verbose();
 
// open database in memory
let db = new sqlite3.Database('test_db.db', (err) => {
  if (err) {
    return console.error(err.message);
  }
  console.log('Connected to the in-memory SQlite database.');
});

// make a query
db.serialize(() => {
  db.each(`SELECT * FROM department`, (err, row) => {
    if (err) {
      console.error(err.message);
    }
    console.log(row);
  });
});
 
// close the database connection
db.close((err) => {
  if (err) {
    return console.error(err.message);
  }
  console.log('Close the database connection.');
});
