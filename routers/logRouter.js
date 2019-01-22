var express = require('express');
var router = express.Router();
const { logController } = require('../controllers');

//ACTIVITY LOG
router.get('/getlistlog', logController.getListLog);

router.post('/addlog', logController.addLog);

module.exports = router;