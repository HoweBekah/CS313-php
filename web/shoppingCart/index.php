<?php
session_start();

$action = filter_input(INPUT_POST, 'action');
if ($action == NULL) {
   $action = filter_input(INPUT_GET, 'action');
}
switch ($action) {
   case 'addItem':

      break;
      case 'removeItem':

      break;
      case 'completeCheck':

      break;
   default:
      include 'itemBrowse.php';
}
?>