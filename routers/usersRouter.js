var express = require('express');
var router = express.Router();
const { usersController } = require('../controllers');

//USERS
router.get('/getlistusers', usersController.getListUsers);

router.get('/adduser', usersController.addUser);

router.get('/edituser/:id', usersController.editUser);

router.get('/deleteuser/:id', usersController.deleteUser);

module.exports = router;