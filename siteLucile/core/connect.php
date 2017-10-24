<?php

require '../config/config.php';

try {
  $db = new PDO("mysql:host=$host;dbname=$dbname;charset=$char", "$user", "$pass");
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (Exception $e) {
  die('Error : ' .$e->getMessage());
}
