<?php

require_once 'Fedora/Autoloader/autoload.php';

Fedora\Autoloader\Autoload::addPsr4('Amp\\Cache\\', __DIR__);

\Fedora\Autoloader\Dependencies::required([
	'/usr/share/php/Amp/autoload.php',
	'/usr/share/php/Amp/Serialization/autoload.php',
	'/usr/share/php/Amp/Sync/autoload.php',
	'/usr/share/php/Revolt/autoload.php',
]);