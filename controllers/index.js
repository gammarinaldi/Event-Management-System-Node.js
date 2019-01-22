const usersController = require('./usersController');
const productsController = require('./productsController');
const cartController = require('./cartController');
const wishlistController = require('./wishlistController');
const trxController = require('./trxController');
const trxDetailsController = require('./trxDetailsController');
const locationController = require('./locationController');
const categoryController = require('./categoryController');
const logController = require('./logController');

module.exports = {
    usersController,
    productsController,
    cartController,
    wishlistController,
    trxController,
    trxDetailsController,
    locationController,
    categoryController,
    logController
}