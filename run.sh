
#!/bin/bash
for var in `echo $WERCKER_ENV_TEMPLATE_OVERWRITE | tr "," "\n"`; do
    eval "export $var"
done

perl -p -e 's/\$\{([^}]+)\}/defined $ENV{$1} ? $ENV{$1} : $&/eg' < $WERCKER_ENV_TEMPLATE_INPUT > $WERCKER_ENV_TEMPLATE_OUTPUT