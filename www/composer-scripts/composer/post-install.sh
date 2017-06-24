#!/bin/sh

# Prepare the scaffold files if they are not already present
if [ ! -f autoload.php ]
  then
    composer drupal-scaffold
    for dir in modules themes profiles
    do
      mkdir -p $dir
      touch $dir/.gitkeep
    done
fi
