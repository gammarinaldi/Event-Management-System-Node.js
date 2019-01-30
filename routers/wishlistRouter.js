var express = require('express');
var router = express.Router();
const { wishlistController } = require('../controllers');

//WISHLIST
router.post('/getlistwishlist', wishlistController.getListWishlist);

router.post('/getwishlist', wishlistController.getWishlist);

router.post('/addwishlist', wishlistController.addWishlist);

router.put('/editwishlist/:id', wishlistController.editWishlist);

router.delete('/deletewishlist/:id', wishlistController.deleteWishlist);

module.exports = router;