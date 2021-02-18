const express = require("express");
var connection = require("../models/db");
var model = require("../models/model");

console.log("outsiide controllers");
module.exports = {
  // get all data from products

  getAllProducts: (req, res) => {
    model.getAllProducts(function (err, results) {
      if (err) {
        console.log("error in product controller", err);
      }
      console.log("Controllleeeer");
      res.json(results);
    });
  },

  // add to cart

  addToCart: (req, res) => {
    var params = [req.body.productID, req.body.quantity,req.body.orderID];
    model.addToCart(params,function (err, results) {
      if (err) {
        console.log("error in cart controller", err);
      }
      console.log("Controllleeeer");
      res.json(results);
    });
  },

  // checkout
   checkout: (req, res) => {
     var params = [req.body.userID, req.body.totalAmount, req.body.payment, req.body.delivery, req.body.deliveryTime, req.body.orderNumber, req.body.orderDate, req.body.address, req.body.Notes, req.body.status, req.body.phoneNumber];
     model.checkout(params, function (err, results) {
      if (err) {
        console.log("error in checkout controller", err);
      }
      console.log("success in checkout controller");
      res.json(results);
     });
   },



// delete 
deleteProduct: (req, res) => {
  var product = req.params.id; 
  console.log(product+ "hhhh")
  model.deleteProduct(product, function (err, results) {
    if (err) {
      console.log("error in delete in  controller", err);
    }
    console.log("success in delete in  controller");
    res.json(results);
   });
},

};