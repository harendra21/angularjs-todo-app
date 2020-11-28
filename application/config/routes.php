<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//$route['default_controller'] = 'HomeCtrl/index';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['default_controller'] = 'TaskCtrl/index';

$route['add-update-task'] = 'TaskCtrl/add_update_task';

$route['get-task'] = 'TaskCtrl/get_task';

$route['action-task'] = 'TaskCtrl/action_task';