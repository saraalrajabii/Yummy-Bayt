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
};
