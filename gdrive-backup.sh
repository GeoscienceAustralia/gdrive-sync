#!/bin/bash

mkdir gdrive/

./rclone sync 'gdrive:GA Autobots' gdrive/

./rclone sync gdrive/ 'ga-aws-devs:autobots-gdrive'
