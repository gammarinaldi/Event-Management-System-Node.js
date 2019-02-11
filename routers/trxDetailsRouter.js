var express = require('express');
var router = express.Router();
const { trxDetailsController } = require('../controllers');

//TRX DETAILS
router.post('/getlisttrxdetails', trxDetailsController.getListTrxDetails);

router.post('/gettrxdetails', trxDetailsController.getTrxDetails);

router.post('/addtrxdetail', trxDetailsController.addTrxDetail);

router.get('/bestseller', trxDetailsController.bestSeller);

router.put('/barcode/:id', trxDetailsController.barcode);

module.exports = router;