var express = require('express');
var router = express.Router();
const { wishlistController } = require('../controllers');

//WISHLIST
router.get('/getlistwishlist', wishlistController.getListWishlist);

router.post('/addwishlist', wishlistController.addWishlist);

router.put('/editwishlist/:id', wishlistController.editWishlist);

router.delete('/deletewishlist/:id', wishlistController.deleteWishlist);

module.exports = router;