<?php
$_COOKIE[base64_decode('X3ltX2l1cw==')] = 1;

// 151-1-54b9bd3ed399202f590f0ba2a0182dd9
// 151-1-8d031b21b9e6ee44f4f1cf57976b57f1

define('LICENSE', '151-1-54b9bd3ed399202f590f0ba2a0182dd9'); // Ваш лицензионный ключ

define('DB_HOST', 'mysqldb');
define('DB_USER', 'dev'); // Имя пользователя
define('DB_PASS', 'dev'); // Пароль
define('DB_BASE', 'test'); // Имя базы данных

//Дальше не менять
ob_start();
ini_set('session.use_cookies', 'On');
ini_set('session.use_trans_sid', 'Off');
session_start();
error_reporting(0);
ob_start();
require_once('crabs_init.php');