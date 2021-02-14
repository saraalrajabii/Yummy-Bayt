var router = require("express").Router();
var controller = require("../contollers/controllers");

router.get("/getAllProducts", controller.getAllProducts);

router.post("/addToCart", controller.addToCart);

module.exports.router = router;
