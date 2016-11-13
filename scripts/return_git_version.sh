#!/bin/bash

ENVROOT='/root/puppetcode'
GITDIR="${ENVROOT}/.git"

git --git-dir $GITDIR rev-parse --short HEAD

