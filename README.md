# Perl Template

A step for Wercker that processes template input files and replaces strings like ${FOO} with their value in the environment.

The step takes two arguments:

* **input**: path to input file (the template)
* **output**: path to output file (containing replaced values)

## Example

```
steps:
    - audienceproject/env-template:
        - input: foo.json.template
        - output: foo.json
```
