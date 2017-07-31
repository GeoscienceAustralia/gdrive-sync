#!/bin/bash

mkdir gdrive/

./rclone sync 'gdrive:GA Autobots' gdrive/ --config rclone.conf

./rclone sync gdrive/ 'ga-aws-devs:autobots-gdrive' --config rclone.conf
