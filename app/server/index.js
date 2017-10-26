const express = require('express');
const app = express();
const http = require("http").Server(app);
const io = require("socket.io")(http);
const mysql = require('mysql');

app.use(express.static(__dirname));
app.set("view engine", "ejs");

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'training_db'
});
connection.connect();


app.get("/", function (req, res) {
    res.render("index", {
        title: "SportTrainer"
    });
});

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

let sex, age, weight, height, count, level, wrapCircumference, goal, trainingdescription;

io.on("connection", function (socket) {
    console.log("connect");

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
    socket.on("getTrain", function () {
        connection.query("SELECT * FROM training WHERE weight = " + weight + " AND height = " + height, function (error, result, fields) {
            if (error) throw error;
            io.emit("getTrain", "Твоя вага: " + result[0].weight + "<br>Твій ріст: " + result[0].height + "<br>Стать: " + sex + "<br>Вік: " + age + "<br>Кількість тренувань: " + count + "<br>Рівень тренувань: " + level + "<br>Обхват зап'ястя: " + wrapCircumference + "<br>Ціль: " + goal + "<br>Тренування для тебе: " + result[0].trainingdescription);
            weight = result[0].weight;
            height = result[0].height;
            trainingdescription = result[0].trainingdescription;
        });
    });
});