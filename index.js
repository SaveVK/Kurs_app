const express = require('express');
const app = express();
const http = require("http").Server(app);
const io = require("socket.io")(http);
const mysql = require('mysql');

var session  = require('express-session');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var passport = require('passport');
var flash    = require('connect-flash');

require('./config/passport')(passport); // pass passport for configuration

app.use(cookieParser()); // read cookies (needed for auth)
app.use(bodyParser.urlencoded({
	extended: true
}));
app.use(bodyParser.json());

app.use(session({
	secret: 'vidyapathaisalwaysrunning',
	resave: true,
	saveUninitialized: true
 } )); // session secret
app.use(passport.initialize());
app.use(passport.session()); // persistent login sessions
app.use(flash()); // use connect-flash for flash messages stored in session


// routes ======================================================================
require('./app/routes.js')(app, passport); // load our routes and pass in our app and fully configured passport

// launch ======================================================================

app.use(express.static(__dirname));
app.set("view engine", "ejs");

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'training_db'
});
connection.connect();

app.get("/result", function (req, res) {
    res.render("result", {
        title: "Результати",
        weight: weight,
        height: height,
        sex: sex,
        age: age,
        count: count,
        level: level,
        wrapCircumference: wrapCircumference,
        goal: goal,
        trainingdescription: trainingdescription
    });
});

http.listen(3000, function () {

});

let userID;
let sex, age, weight, height, count, level, wrapCircumference, goal, trainingdescription, training_id;

io.on("connection", function (socket) {
    console.log("connect");

    socket.on("getUserID", function (data) {
        userID = data;
    });

    socket.on("getWeight", function (data) {
        weight = data;
    });
    socket.on("getHeight", function (data) {
        height = data;
    });
    socket.on("getSex", function (data) {
        sex = data;
    });
    socket.on("getAge", function (data) {
        age = data;
    });
    socket.on("getCount", function (data) {
        count = data;
    });
    socket.on("getLevel", function (data) {
        level = data;
    });
    socket.on("getWrapCircumference", function (data) {
        wrapCircumference = data;
    });
    socket.on("getGoal", function (data) {
        goal = data;
    });
    socket.on("setInfo", function () {
        // training_id + username replace
        let sql = "UPDATE users SET weight = '" + weight + "', height = '" + height + "', sex = '" + sex + "', age = " + age + ", count = " + count + ", level = '" + level + "', wrapCircumference = '" + wrapCircumference + "', goal = '" + goal + "', training_id = " + 1 + " WHERE id = " + userID;
        connection.query(sql, function (err, result) {
            if (err) throw err;
            console.log("1 record inserted");
          });
          console.log(sql);
    });
    socket.on("getInfo", function () {
        connection.query("SELECT * FROM users WHERE id = " + userID, function (error, result, fields) {
            if (error) throw error;
            io.emit("getTrain", "Твоя вага: " + result[0].weight + "<br>Твій ріст: " + result[0].height + "<br>Стать: " + result[0].sex + "<br>Вік: " + result[0].age + "<br>Кількість тренувань: " + result[0].count + "<br>Рівень тренувань: " + result[0].level + "<br>Обхват зап'ястя: " + result[0].wrapCircumference + "<br>Ціль: " + result[0].goal + "<br>Тренування для тебе: " + result[0].trainingdescription);
        });
    });
});