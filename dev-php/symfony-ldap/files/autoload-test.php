<?php

require_once 'Fedora/Autoloader/autoload.php';

\Fedora\Autoloader\Dependencies::required([
	'autoload.php',
	'/usr/share/php/Symfony/Component/Security/Core/autoload.php',
	'/usr/share/php/Symfony/Component/Security/Http/autoload.php',
]);
