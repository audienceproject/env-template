# Perl Template

A step for Wercker that processes template input files and replaces strings like ${FOO} with their value in the environment.

The step takes two arguments:

- **input**: path to input file (the template)
- **output**: path to output file (containing replaced values)
- **overwrite** (optional): string of environment variables to overwrite, in form of ENVVAR1=VAL1,ENVVAR2,VAL2

## Example

```
steps:
    - audienceproject/env-template:
        - input: foo.json.template
        - output: foo.json
        - overwrite: ENVVAR1=VAL1,ENVVAR2
```
