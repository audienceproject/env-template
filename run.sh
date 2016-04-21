#!/bin/bash
perl -p -e 's/\$\{([^}]+)\}/defined $ENV{$1} ? $ENV{$1} : $&/eg' < $WERCKER_ENV_TEMPLATE_INPUT > $WERCKER_ENV_TEMPLATE_OUTPUT
