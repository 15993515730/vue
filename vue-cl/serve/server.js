const express = require("express");
const app = express();
const port = 3000;

app.all("/*", function (req, res, next) {
  // 跨域处理
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "X-Requested-With");
  res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
  res.header("Content-Type", "application/json;charset=utf-8");
  next();
});

var mysql = require("mysql");
var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "123456",
  database: "cook",
});

connection.connect();
app.get("/index", (req, res) => {
  //banner1接口
  const limit=(req.query.page-1)*8
  connection.query('select * from cook_list limit '+limit+',8', function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/kind", (req, res) => {              
  //banner1接口
  connection.query("select * from cook_all where type_id="+req.query.type_id, function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
 app.get("/top", (req, res) => {              
  //banner1接口
  const limit1=(req.query.page-1)*20
  connection.query('select * from cook_top limit '+limit1+',20', function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/ask", (req, res) => {              
  //banner1接口
  connection.query("select * from cook_ask", function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/typic", (req, res) => {              
  //banner1接口
  connection.query("select * from cook_typic", function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/new", (req, res) => {              
  //banner1接口
  connection.query("select * from cook_new", function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/hot", (req, res) => {              
  //banner1接口
  connection.query("select * from cook_hot", function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/tab", (req, res) => {              
  //banner1接口
  connection.query("select * from cook_tab where tab="+req.query.tab, function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/video", (req, res) => {              
  //banner1接口
  const limit2=(req.query.page-1)*8
  connection.query('select * from cook_shipin limit '+limit2+',8', function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/shi", (req, res) => {              
  //banner1接口
  connection.query('select * from cook_video where id='+req.query.id, function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/step", (req, res) => {              
  //banner1接口
  connection.query('select * from cook_step', function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/step_one", (req, res) => {              
  //banner1接口
  connection.query('select * from cook_step where id='+req.query.id, function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/menu_one", (req, res) => {              
  //banner1接口
  const limit3=(req.query.page-1)*10
  connection.query('select * from cook_menu limit '+limit3+',10', function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/menu_two", (req, res) => {              
  //banner1接口
  connection.query('select * from cook_menu where title like '+'%'+req.query.msg+'%', function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/detail", (req, res) => {              
  //banner1接口
  connection.query('select * from cook_list where id='+req.query.id, function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/swiper", (req, res) => {              
  //banner1接口
  connection.query('select * from cook_detail where id='+req.query.id, function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/list", (req, res) => {              
  //banner1接口
  connection.query('select * from cook_detail', function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/regist", (req, res) => {              
  //banner1接口
  connection.query("insert into username(tel,name,password) values("+req.query.tel+","+req.query.name+","+req.query.password+");", function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
app.get("/regist_in", (req, res) => {              
  //banner1接口
  connection.query("select * from username", function (err, rows) {
    console.log(rows);
    res.json(rows);
    if (err) throw err;
  });
});
// connection.end()
app.listen(port, () => console.log(`Example app listening on port ${port}!`));
function query(sql, callback) {
  connection.getConnection(function (err, connection) {
    // Use the connection
    connection.query(sql, function (err, rows) {
      callback(err, rows);
      connection.release(); //释放链接
    });
  });
}
exports.query = query;
