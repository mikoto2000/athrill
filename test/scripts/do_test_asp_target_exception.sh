#!/bin/bash

THIS_DIR=$(cd $(dirname ${0}); pwd)

. ${THIS_DIR}/../env.sh

TEST_TIMEOUT=4000000
TEST_BIN=${ATHRILL_HOME}/test/test_os/asp/ttsp/obj/check_library/exception/asp

util_set_cmdname $0
util_do_test 
util_do_log_check
