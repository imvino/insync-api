<?php

declare(strict_types=1);

use Rector\Config\RectorConfig;
use Rector\Set\ValueObject\LevelSetList;
use Rector\Set\ValueObject\SetList;

return static function (RectorConfig $rectorConfig): void {
    $rectorConfig->paths([
        __DIR__
    ]);

    $rectorConfig->sets([
        SetList::PHP_53,
        SetList::PHP_54,
        SetList::PHP_55,
        SetList::PHP_56,
        SetList::PHP_70,
        SetList::PHP_71,
        SetList::PHP_72,
        SetList::PHP_73,
        SetList::PHP_74,
        SetList::PHP_80,
        LevelSetList::UP_TO_PHP_80
    ]);

    $rectorConfig->fileExtensions(['php']);
    $rectorConfig->importNames();
    $rectorConfig->importShortClasses(false);
    
    // Define the output directory
    $rectorConfig->targetPhpVersion('8.0');
    $rectorConfig->cacheDirectory('C:/InSync/WebUI/v2Php');
};