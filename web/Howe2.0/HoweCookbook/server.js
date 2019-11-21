//require('dotenv').config();
const express = require('express')
const path = require('path')
const { Pool } = require('pg')
const PORT = process.env.PORT || 8080
const connectionString = process.env.DATABASE_URL || "postgres://wunhvycrupsuhg:92f5887185a74e12ef272b64f8ccabe7bd85a0b081710fd3afeac575e0af2759@ec2-174-129-27-3.compute-vjc7ocv1mnh'1.amazonaws.com:5432/ddovjc7ocv1mnh?ssl=true";
​
express()
  .use(express.static(path.join(__dirname, 'public')))
  .set('views', path.join(__dirname, 'views'))
  .set('view engine', 'ejs')
  .get('/', (req, res) => res.render('pages/index'))
  .get('/dbConnect', function(req, res){
    const pool = new Pool({connectionString: connectionString});
    var sql = "Select * FROM category";
    pool.query(sql, function(err, result) {
      if (err) {
        console.log("Error in query: ");
        console.log(err);
      }
      console.log("Back from DB with result:");
      console.log(result.rows);
    });
  })
//   .get('/getPerson', function(req, res){
//     var id = req.query.id;
//     var returned = function getPerson(data, id){
//       console.log(data);
//     };
//     query(returned);
//   })
  .listen(PORT, () => console.log(`Listening on ${ PORT }`))
​
​
// function query(callback) {
//   console.log(id);
//   const pool = new Pool({connectionString: connectionString});
//   var sql = "SELECT * FROM person WHERE id=" + id;
//   console.log(sql);
//   pool.query(sql, function(err, result){
//     if (err) {
//       console.log("Error in query: ");
//       console.log(err);
//     }
//     console.log("Here's the thing:");
//     console.log(result.rows);
//     callback(result.rows);
//   })
//}