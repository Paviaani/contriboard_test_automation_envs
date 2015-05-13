#!/bin/bash
#
# Clones the repositories using 'ssh'. Use the 'initialize-https' if you prefer
# to use 'https' in cloning the repositories.

# Default to N4SJAMK if no user is given.
USER=${1-N4SJAMK}

# Clone our repositories.
git clone git@github.com/$USER/teamboard-test.git 	test

# Set 'upstream' to the original repository.
(cd test           && git remote add upstream git@github.com/N4SJAMK/teamboard-test.git)
