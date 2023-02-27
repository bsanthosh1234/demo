const mongoose = require("mongoose")

const Schema = mongoose.Schema;

const noen = new Schema({
    date: String,
    description: String,
    amount: Number,
    category: String,
    type: String,
    time: String
}, { collection: "noen", timestamps: true })

const expense= new mongoose.model("noen",noen)
module.exports =expense