#! /bin/zsh

## limit
unlimit
limit coredumpsize 0
limit stacksize 8192
limit -s

## umask
umask 022
