const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const PORT = process.env.PORT || 1988;

var app = express({defaultErrorHandler:false});

app.use(cors());
app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json());
app.use(express.static('public'));

app.get('/', (req,res) => {
    res.send('<h1>Selamat Datang di Node.js Mysql!</h1>');
});

const {
    usersRouter,
    productsRouter,
    trxRouter,
    trxDetailsRouter,
    cartRouter,
    categoryRouter,
    locationRouter,
    wishlistRouter,
    logRouter
} = require('./routers');

app.use('/users', usersRouter);
app.use('/products', productsRouter);
app.use('/trx', trxRouter);
app.use('/trxDetails', trxDetailsRouter);
app.use('/cart', cartRouter);
app.use('/category', categoryRouter);
app.use('/location', locationRouter);
app.use('/wishlist', wishlistRouter);
app.use('/log', logRouter);

app.listen(PORT, () => console.log('Node is running, API active at port: ' + PORT));