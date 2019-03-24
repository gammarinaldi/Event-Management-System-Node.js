var express = require('express');
var router = express.Router();
const { trxDetailsController } = require('../controllers');

//TRX DETAILS
router.post('/getlisttrxdetails', trxDetailsController.getListTrxDetails);

router.post('/gettrxdetails', trxDetailsController.getTrxDetails);

router.post('/addtrxdetail', trxDetailsController.addTrxDetail);

router.get('/bestseller', trxDetailsController.bestSeller);

router.get('/worstseller', trxDetailsController.worstSeller);

router.put('/qrcode/:id', trxDetailsController.qrcode);

router.get('/totaltrx', trxDetailsController.totalTrx);

module.exports = router;