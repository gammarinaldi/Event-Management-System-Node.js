const authRouter = require('./authRouter');
const usersRouter = require('./usersRouter');
const productsRouter = require('./productsRouter');
const cartRouter = require('./cartRouter');
const trxRouter = require('./trxRouter');
const trxDetailsRouter = require('./trxDetailsRouter');
const wishlistRouter = require('./wishlistRouter');
const locationRouter = require('./locationRouter');
const categoryRouter = require('./categoryRouter');
const logRouter = require('./logRouter');

module.exports = {
    authRouter,
    usersRouter,
    productsRouter,
    cartRouter,
    trxRouter,
    trxDetailsRouter,
    wishlistRouter,
    locationRouter,
    categoryRouter,
    logRouter
}

