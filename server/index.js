
// IMPORTS FROM PACKAGES
const express = require("express");
const mongoose = require("mongoose");
const adminRouter = require("./routes/admin");
// IMPORTS FROM OTHER FILES
const authRouter = require("./routes/auth");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");

// INIT
const PORT = process.env.PORT || 3000;
const app = express();
const DB =
  "mongodb+srv://narendersdcs:AmazonClone@cluster0.dyqbuot.mongodb.net/?retryWrites=true&w=majority";

// middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

// Connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});


























//
////IMPORTS FROM PACKAGES
//const express = require('express');
//const mongoose = require('mongoose');
//
////IMPORTS FORM OTHER FILES
//
//  const authRouter = require("./routes/auth");
////import './features/auth/screens/auth_screen.dart
//
//// INIT
//const PORT = 3000;
//const app = express();
//const DB = "mongodb+srv://narendersdcs:AmazonClone@cluster0.dyqbuot.mongodb.net/?retryWrites=true&w=majority"
//
//// middleware
//// CLIENT -> middleware -> SERVER -> CLIENT
//app.use(express.json());
//app.use(authRouter);
//
//// Connections
//mongoose
//.connect(DB)
//.then(() => {
//console.log("Connection Successful");
//})
//.catch((e) => {
// console.log(e);
//});
//
//app.listen(PORT, "0.0.0.0", () => {
// console.log(`connected at port ${PORT}`);
//});































//console.log('Hello');
////print ('Hello')
//
//const express = require('express');   //like example :- import 'package:express/express.dart'
//
//const PORT = 3000;
//const app = express();
//
////CREATING AN API
//// http://<yourapiaddress>/hello-word
//
////Create a GET request giving a json response with key of name and value of ypur name
////{
////       'name': 'Narender'
////}
//
//app.get('/', (req, res) => {
//res.json({ name: "Narender" });
//
//});
//
//app.get('/hello-world', (req, res) =>{
//res.json({ hi: "hello world" });
//});
//// GET, PUT, POST, DELETE, UPDATE -> CRUD
//
//
//app.listen(PORT, "0.0.0.0", () => {
////console.log('connected at port ' + PORT);
// console.log(`connected at port ${PORT}`);
//} );
//
//
////localhost