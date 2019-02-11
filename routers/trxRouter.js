var express = require('express');
var router = express.Router();
const { trxController } = require('../controllers');

//TRX
router.get('/getlisttrx', trxController.getListTrx);

router.post('/gettrx', trxController.getTrx);

router.post('/addtrx', trxController.addTrx);

router.put('/statusupdate/:id', trxController.statusUpdate);

module.exports = router;