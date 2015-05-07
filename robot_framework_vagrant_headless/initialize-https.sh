#!/bin/bash
#
# Clones the repositories using 'https'. Use the 'initialize-ssh' if you prefer
# to use 'ssh' in cloning the repositories.


# Default to N4SJAMK if no user is given.
USER=${1-N4SJAMK}

# Clone our repositories.
git clone https://github.com/N4SJAMK/teamboard-test.git 	test

# Set 'upstream' to the original repository.
(cd test           && git remote add upstream https://github.com/N4SJAMK/teamboard-test)