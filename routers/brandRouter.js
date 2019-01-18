var express = require('express');
var router = express.Router();
const { brandController } = require('../controllers');

router.get('/getlistbrand', brandController.getListBrand);

router.post('/addbrand', brandController.addBrand);

router.put('/editbrand/:id', brandController.editBrand);

router.delete('/deletebrand/:id', brandController.deleteBrand);

module.exports = router;