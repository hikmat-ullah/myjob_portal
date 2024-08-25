#!/bin/bash

echo "**********************"
echo "Testing Laravel Image "
echo "**********************"
#unit_testing=vendor/bin/phpunit --configuration phpunit.xml

docker run --rm -ti -v jobportal-web-app-master:/app hikmatmarwat/job_portal:$BUILD_TAG vendor/bin/phpunit --configuration phpunit.xml

#docker run --rm -ti -v jobportal-web-app-master:/app hikmatmarwat/job_portal:1.5 "$unit_testing"
