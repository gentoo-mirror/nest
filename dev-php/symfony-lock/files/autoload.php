<?php

require_once 'Fedora/Autoloader/autoload.php';

Fedora\Autoloader\Autoload::addPsr4('Symfony\\Component\\Lock\\', __DIR__);

// Dependencies
\Fedora\Autoloader\Dependencies::required([
	'/usr/share/php/Psr/Log/autoload.php',
	'/usr/share/php/Symfony/Contracts/Deprecation/autoload.php',
]);
