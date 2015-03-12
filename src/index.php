<?php
  // web/index.php
require_once __DIR__.'/../vendor/autoload.php';

$app = new Silex\Application();

$app->get('/', function () {
  return 'snap snap snap';
});

$app->run();
