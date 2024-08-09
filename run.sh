# Create new directory for PHP 8 project
# mkdir C:\InSync\WebUI\v2Php

# # Copy existing files to new directory
# xcopy C:\InSync\WebUI\www C:\InSync\WebUI\v2Php /E /H /C /I

# # Navigate to new project directory
# cd C:\InSync\WebUI\v2Php

# Initialize Composer (if composer.json does not exist)
composer init --name="my_project" --require=rector/rector --dev

# Install Rector
composer require rector/rector --dev

# Create rector.php configuration file
echo ^<^?php > rector.php
echo >> rector.php
echo declare(strict_types=1); >> rector.php
echo >> rector.php
echo use Rector\Config\RectorConfig; >> rector.php
echo use Rector\Set\ValueObject\SetList; >> rector.php
echo >> rector.php
echo return static function (RectorConfig $rectorConfig): void { >> rector.php
echo     $rectorConfig->paths([ >> rector.php
echo         __DIR__ . '/src', >> rector.php
echo     ]); >> rector.php
echo     // Register sets to run >> rector.php
echo     $rectorConfig->sets([ >> rector.php
echo         SetList::PHP_80, >> rector.php
echo     ]); >> rector.php
echo }; >> rector.php

# Run Rector to refactor the code
vendor\bin\rector process
