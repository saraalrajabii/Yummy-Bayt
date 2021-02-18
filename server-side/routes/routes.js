var router = require("express").Router();
var controller = require("../contollers/controllers");

router.get("/getAllProducts", controller.getAllProducts);

router.post("/addToCart", controller.addToCart);

router.post("/checkout", controller.checkout);

router.delete("/deleteProduct/:id", controller.deleteProduct);

module.exports.router = router;
