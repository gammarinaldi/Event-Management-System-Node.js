var express = require('express');
var router = express.Router();
const { matchesController } = require('../controllers');

//MATCHES
router.post('/show', matchesController.showMatches);

router.post('/add', matchesController.addMatch);

module.exports = router;