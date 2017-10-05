const app = require("express")();
const http = require("http").Server(app);
const io = require("socket.io")(http);

app.get("/", function(req, res){
    res.sendFile(__dirname + "/index.html");
});

http.listen(3000, function(){

});

io.on("connection", function(socket){
    console.log("connect");
})