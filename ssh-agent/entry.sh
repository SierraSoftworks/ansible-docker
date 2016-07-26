#! /bin/sh

eval $(ssh-agent)
ssh-add $SSH_KEY

$@