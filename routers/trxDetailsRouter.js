var express = require('express');
var router = express.Router();
const { trxDetailsController } = require('../controllers');

//TRX DETAILS
router.get('/getlisttrxdetails', trxDetailsController.getListTrxDetails);

router.post('/addtrxdetail', trxDetailsController.addTrxDetail);

router.put('/edittrxdetail/:id', trxDetailsController.editTrxDetail);

router.delete('/deletetrxdetail/:id', trxDetailsController.deleteTrxDetail);

module.exports = router;