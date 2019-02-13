var express = require('express');
var router = express.Router();
const { authController } = require('../controllers');

//AUTH
router.post('/login', authController.login);

router.post('/keeplogin', authController.keepLogin);

router.post('/register', authController.register);

router.post('/verified', authController.verified);

module.exports = router;