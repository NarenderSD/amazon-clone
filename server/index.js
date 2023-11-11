
//IMPORTS FROM PACKAGES
const express = require('express');

//IMPORTS FORM OTHER FILES

const authRouter = require("./routes/auth")
//import './features/auth/screens/auth_screen.dart

// middleware
// CLIENT -> middleware -> SERVER -> CLIENT

//app.use

// INIT
const PORT = 3000;


const app = express();

app.listen(PORT, () => {
 console.log(`connected at port ${PORT}`);
});































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