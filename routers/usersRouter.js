var express = require('express');
var router = express.Router();
const { usersController } = require('../controllers');

//USERS
router.get('/getlistusers', usersController.getListUsers);

router.post('/adduser', usersController.addUser);

router.put('/edituser/:id', usersController.editUser);

router.delete('/deleteuser/:id', usersController.deleteUser);

module.exports = router;