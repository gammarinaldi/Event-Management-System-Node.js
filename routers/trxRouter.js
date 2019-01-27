var express = require('express');
var router = express.Router();
const { trxController } = require('../controllers');

//TRX
router.get('/getlisttrx', trxController.getListTrx);

router.post('/gettrx', trxController.getListTrx);

router.post('/addtrx', trxController.addTrx);

router.put('/edittrx/:id', trxController.editTrx);

router.delete('/deletetrx/:id', trxController.deleteTrx);

module.exports = router;