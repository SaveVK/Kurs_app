const app = require("express")();
const http = require("http").Server(app);
const io = require("socket.io")(http);

app.get("/", function (req, res) {
    res.sendFile(__dirname + "/index.html");
});

http.listen(3000, function () {

});

let weight, height;
let testTrain = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo excepturi, maiores officia saepe doloremque fugit, architecto culpa, iure illo ducimus animi molestiae, in praesentium eligendi corrupti soluta accusantium eaque fuga.";

io.on("connection", function (socket) {
    console.log("connect");

    socket.on("getWeight", function (data) {
        weight = data;
    });
    socket.on("getHeight", function (data) {
        height = data;
    });
    socket.on("getTrain", function () {
        io.emit("getTrain", "Твоя вага: " + weight + "<br>Твій ріст: " + height + "<br>Тренування для тебе: " + testTrain);
    });
})