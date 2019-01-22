var express = require('express');
var router = express.Router();
const { brandController } = require('../controllers');

//USERS
router.get('/getlistusers', brandController.getListUsers);

router.get('/adduser', brandController.addUser);

router.get('/edituser/:id', brandController.editUser);

router.get('/deleteuser/:id', brandController.deleteUser);

//PRODUCTS
router.get('/getlistproducts', brandController.getListProducts);

router.post('/addproduct', brandController.addProduct);

router.put('/editproduct/:id', brandController.editProduct);

router.delete('/deleteproduct/:id', brandController.deleteProduct);

//CART
router.get('/getlistcart', brandController.getListCart);

router.post('/addtocart', brandController.addToCart);

router.put('/editcart/:id', brandController.editCart);

router.delete('/deletecart/:id', brandController.deleteCart);

//WISHLIST
router.get('/getlistwishlist', brandController.getListWishlist);

router.post('/addwishlist', brandController.addWishlist);

router.put('/editwishlist/:id', brandController.editWishlist);

router.delete('/deletewishlist/:id', brandController.deleteWishlist);

//TRX
router.get('/getlisttrx', brandController.getListTrx);

router.post('/addtrx', brandController.addTrx);

router.put('/edittrx/:id', brandController.editTrx);

router.delete('/deletetrx/:id', brandController.deleteTrx);

//TRX DETAILS
router.get('/getlisttrxdetails', brandController.getListTrxDetails);

router.post('/addtrxdetail', brandController.addTrxDetail);

router.put('/edittrxdetail/:id', brandController.editTrxDetail);

router.delete('/deletetrxdetail/:id', brandController.deleteTrxDetail);

//LOCATION
router.get('/getlistlocation', brandController.getListLocation);

router.post('/addlocation', brandController.addLocation);

router.put('/editlocation/:id', brandController.editLocation);

router.delete('/deletelocation/:id', brandController.deleteLocation);

//CATEGORY
router.get('/getlistcategory', brandController.getListCategory);

router.post('/addcategory', brandController.addCategory);

router.put('/editcategory/:id', brandController.editCategory);

router.delete('/deletecategory/:id', brandController.deleteCategory);

//ACTIVITY LOG
router.get('/getlistlog', brandController.getListLog);

router.post('/addlog', brandController.addLog);

module.exports = router;