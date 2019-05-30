var mysql = require('mysql');

var con = mysql.createConnection({
	host: "localhost",
		user: "root",
		password: "allthedata",
		database: "test"
});

con.connect(function (err) {
	if (err) throw err;
	console.log("Connected!");
});


let sql = `SELECT * FROM pets`;
con.query(sql, (error, results, fields) => {
	if (error) {
		return console.error(error.message);
	}
	console.log(results);
});
