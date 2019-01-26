var express = require('express');
var router = express.Router();
const { productsController } = require('../controllers');

//PRODUCTS
router.get('/getlistproducts', productsController.getListProducts);

router.post('/getproduct', productsController.getProduct);

router.post('/addproduct', productsController.addProduct);

router.put('/editproduct/:id', productsController.editProduct);

router.delete('/deleteproduct/:id', productsController.deleteProduct);

module.exports = router;