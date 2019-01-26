var express = require('express');
var router = express.Router();
const { authController } = require('../controllers');

//AUTH
router.post('/login', authController.login);

router.post('/register', authController.register);

module.exports = router;