const app = require("express")();
const http = require("http").Server(app);
const io = require("socket.io")(http);
const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'trainingdb'
});
connection.connect();


app.get("/", function (req, res) {
    res.sendFile(__dirname + "/index.html");
});

http.listen(3000, function () {

});

let sex, age, weight, height, count, level, wrapCircumference, goal;

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
        });
    });
});