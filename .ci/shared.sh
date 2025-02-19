#!/usr/bin/env bash
set -e

#
# Make sure list of PHP versions supported by the Elastic APM PHP Agent is in sync
# - generate_package_lifecycle_test_matrix.sh
# - Jenkinsfile (the list appears in Jenkinsfile more than once - search for "list of PHP versions")
#
export ELASTIC_APM_PHP_TESTS_SUPPORTED_PHP_VERSIONS=(7.2 7.3 7.4 8.0 8.1)

export ELASTIC_APM_PHP_TESTS_SUPPORTED_LINUX_NATIVE_PACKAGE_TYPES=(apk deb rpm)
export ELASTIC_APM_PHP_TESTS_SUPPORTED_LINUX_PACKAGE_TYPES=("${ELASTIC_APM_PHP_TESTS_SUPPORTED_LINUX_NATIVE_PACKAGE_TYPES[@]}" tar)

export ELASTIC_APM_PHP_TESTS_APP_CODE_HOST_LEAF_KINDS_SHORT_NAMES=(http cli)
export ELASTIC_APM_PHP_TESTS_APP_CODE_HOST_KINDS_SHORT_NAMES=("${ELASTIC_APM_PHP_TESTS_APP_CODE_HOST_LEAF_KINDS_SHORT_NAMES[@]}" all)

export ELASTIC_APM_PHP_TESTS_LEAF_GROUPS_SHORT_NAMES=(no_ext_svc with_ext_svc)
export ELASTIC_APM_PHP_TESTS_GROUPS_SHORT_NAMES=("${ELASTIC_APM_PHP_TESTS_LEAF_GROUPS_SHORT_NAMES[@]}" smoke)
