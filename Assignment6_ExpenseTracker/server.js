const express = require("express");
const app = express();
const cors = require("cors");
const fs = require("fs");

app.use(express.json());
app.use(cors());
const { Script } = require("vm");
const { dirname } = require("path");

app.use(express.urlencoded({ extended: true }));
app.use(express.static(__dirname + "/client"));

const conn = require("./connection")
const expense = require("./schema1")



app.get("/", (req, res) => {
  // console.log(req.url)
  res.send(__dirname + './index.html')
  // res.send(`<script>window.location("/")</script>`);
});


// const newData = new noen({
//   "date": "2023-02-20",
//   "description": "eshwar",
//   "amount": "400",
//   "category": "housing",
//   "type": "expense",
//   "time": "01:32:57"
// })
// newData.save((err,doc)=>{
//   err?console.log(err):console.log("Okay");
// })


// app.get("/data", (req, res) => {
//   fs.readFile("./items.json", "utf8", (err, jsonString) => {
//     if (err) {
//       console.log("File read failed:", err);
//       return;
//     }
//     temp = JSON.parse(jsonString);
//     // console.log(temp);
//     res.send(temp);
//   });
// });


app.post("/add", function (req, res) {


  const newData = new expense({
    
    date: req.body.data.date,
    description: req.body.data.description,
    amount: req.body.data.amount,
    category: req.body.data.category,
    type: req.body.data.type,
    time: req.body.data.time
});

newData.save((err,doc)=>{
  err?console.log(err):console.log("Okay");
})

// newData.save()
//     .then(async() => {
//         console.log('Data saved successfully');
//         //console.log(author)
//         //res.status(200).send('Data saved successfully');
        
       
        
//     })
//     .catch(err => {
//         console.error(err);
//         res.status(500).send('Error saving data');
//     })

  // fs.readFile("./items.json", "utf8", (err, jsonString) => {
  //   if (err) {
  //     console.log("File read failed:", err);
  //     return;
  //   }
  //   temp = JSON.parse(jsonString); //now it an object
  //   temp.table.push(req.body.data);
  //   var newData = JSON.stringify(temp); //convert it back to json
  //   fs.writeFile("./items.json", newData, (err) => {
  //     // write it back
  //     // error checking
  //     if (err) throw err;
  //     console.log("New data added");
  //   });
  // });
  res.redirect("/")
});
app.get("/data1",(req,res) =>
{
  
   expense.find({}, function(err,x){
    //console.log(x)
    res.send(x)
  });
  
})


app.listen(8700);
