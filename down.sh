#!/bin/bash

GITHUB="https://github.com"
OWNER="rafaeljesus"
REPOS="kyp-gateway \
  kyp-todo \
  kyp-users \
  kyp-auth \
  kyp-proxy \
  kyp-structs \
  kyp-secret-key \
  kyp-env"

for g in $REPOS ; do
  REPO="$GITHUB/$OWNER/$g.git";
  echo "== $REPO ==";
  git clone $REPO "$GOPATH/src/github.com/$OWNER/$g";
done
