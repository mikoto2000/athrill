#!/bin/bash

THIS_DIR=$(cd $(dirname ${0}); pwd)

echo "#START TEST ASP TARGET TIMER"
bash ${THIS_DIR}/scripts/do_test_asp_target_timer.sh
if [ $? -ne 0 ]
then
    exit 1
fi

echo "#START TEST ASP TARGET INTERRUPT"
bash ${THIS_DIR}/scripts/do_test_asp_target_interrupt.sh
if [ $? -ne 0 ]
then
    exit 1
fi

echo "#START TEST ASP TARGET EXCEPTION"
bash ${THIS_DIR}/scripts/do_test_asp_target_exception.sh
if [ $? -ne 0 ]
then
    exit 1
fi

echo "#START TEST ASP SIL"
bash ${THIS_DIR}/scripts/do_test_asp_sil.sh
if [ $? -ne 0 ]
then
    exit 1
fi

echo "#START TEST ASP API"
bash ${THIS_DIR}/scripts/do_test_asp_api.sh
if [ $? -ne 0 ]
then
    exit 1
fi

exit 0