This repo is set up to trigger a concurrency bug in the premium addon.
The bug is in at least Cppcheck Premium 24.6.0 and 24.11.0, but it is
**not** in Cppcheck Premium 23.9.0.

Run `make premium` 10 times, for me about 5 reported an error like this:

> common/many-times-compiled.c:0:0: error: Bailing out from analysis: Checking file failed: Failed to execute addon 'premiumaddon.json' - exitcode is 1 [internalError]

`make misra` never triggers this error for me.

You can specify the cppcheck binary to use with the `CPPCHECK` makefile
variable like this: `CPPCHECK=/path/to/dev_build/cppcheck make`
