var express = require('express');
var router = express.Router();
const { trxDetailsController } = require('../controllers');

//TRX DETAILS
router.post('/getlisttrxdetails', trxDetailsController.getListTrxDetails);

router.post('/addtrxdetail', trxDetailsController.addTrxDetail);

module.exports = router;