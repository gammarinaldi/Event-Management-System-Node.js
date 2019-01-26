var express = require('express');
var router = express.Router();
const { locationController } = require('../controllers');

//LOCATION
router.get('/getlistlocation', locationController.getListLocation);

router.post('/getlocation', locationController.getLocation);

router.post('/addlocation', locationController.addLocation);

router.put('/editlocation/:id', locationController.editLocation);

router.delete('/deletelocation/:id', locationController.deleteLocation);

module.exports = router;