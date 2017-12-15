# dockstore-dd

dockstore testing tool to generate file of size X with input from /dev/zero

## Development environment

This project uses git pre-commit hooks.  As these will execute on your system you
need to activate them.  Failure to adhere to these may result in rejection of your
work.

The following command will activate the checks to execute before a commit is processed:

```
git config core.hooksPath git-hooks
```

A failure will block a commit, this includes style for terraform.

You can run the same checks manually without a commit by executing the following
in the base of the clone:

```bash
./run_checks.sh
```
