const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const PORT = process.env.PORT || 1988;

var app = express({defaultErrorHandler:false}); //Kirim error gak pake throw

app.use(cors());//Supaya API bisa diakses oleh front end
app.use(bodyParser.urlencoded({extended:false})); //Biar dari front end bisa kirim image
app.use(bodyParser.json());//Untuk menerima json melalui req.body
app.use(express.static('public')); //Untuk akses folder public

app.get('/', (req,res) => {
    res.send('<h3>Selamat Datang di API Purwadhikastore, dibuat menggunakan Node.js dengan database MySQL.</h3>');
});

const {
    authRouter,
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

app.use('/auth', authRouter);
app.use('/users', usersRouter);
app.use('/products', productsRouter);
app.use('/trx', trxRouter);
app.use('/trxdetails', trxDetailsRouter);
app.use('/cart', cartRouter);
app.use('/category', categoryRouter);
app.use('/location', locationRouter);
app.use('/wishlist', wishlistRouter);
app.use('/log', logRouter);

app.listen(PORT, () => console.log('Node is running, API active at port: ' + PORT));