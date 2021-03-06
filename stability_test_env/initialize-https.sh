#!/bin/bash
#
# Clones the repositories using 'https'. Use the 'initialize-ssh' if you prefer
# to use 'ssh' in cloning the repositories.


# Default to N4SJAMK if no user is given.
USER=${1-N4SJAMK}

# Clone our repositories.
git clone https://github.com/$USER/teamboard-io           io
git clone https://github.com/$USER/teamboard-api          api
# git clone https://github.com/$USER/teamboard-client       client
git clone https://github.com/$USER/teamboard-client-react client-react
git clone https://github.com/$USER/teamboard-img img
git clone https://github.com/$USER/contriboard-populator.git 	populator
git clone https://github.com/$USER/teamboard-test.git 	test

# Set 'upstream' to the original repository.
(cd io           && git remote add upstream https://github.com/N4SJAMK/teamboard-io)
(cd api          && git remote add upstream https://github.com/N4SJAMK/teamboard-api)
# (cd client       && git remote add upstream https://github.com/N4SJAMK/teamboard-client)
(cd client-react && git remote add upstream https://github.com/N4SJAMK/teamboard-client-react)
(cd img && git remote add upstream https://github.com/N4SJAMK/teamboard-img.git)
(cd populator && git remote add upstream https://github.com/N4SJAMK/contriboard-populator)