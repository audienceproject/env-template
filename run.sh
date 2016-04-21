#!/bin/bash
perl -p -e 's/\$\{([^}]+)\}/defined $ENV{$1} ? $ENV{$1} : $&/eg' < $WERCKER_PERL_TEMPLATE_INPUT > $WERCKER_PERL_TEMPLATE_OUTPUT
