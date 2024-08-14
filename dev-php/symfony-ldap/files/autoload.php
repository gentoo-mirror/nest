<?php

require_once 'Fedora/Autoloader/autoload.php';

Fedora\Autoloader\Autoload::addPsr4('Symfony\\Component\\Ldap\\', __DIR__);

// Dependencies
\Fedora\Autoloader\Dependencies::required([
	'/usr/share/php/Symfony/Contracts/Deprecation/autoload.php',
	'/usr/share/php/Symfony/Component/OptionsResolver/autoload.php',
]);
