#!/bin/bash

source .env

if [[ -z "$ROUTER" ]]; then
    error_exit "ROUTER is not defined"
fi
echo "Router = $ROUTER"

if [[ -z "$ADMIN" ]]; then
    error_exit "ADMIN is not defined"
fi
echo "Admin = $ADMIN"

if [[ -z "$PAUSERS" ]]; then
    error_exit "PAUSERS is not defined"
fi
echo "Pausers = $PAUSERS"

case "$ROUTER" in
  Permissionless|Axelar|Forwarder)
    npx sphinx propose script/${ROUTER}.s.sol --networks testnets
    ;;
  *)
    echo "Router should be one of Permissionless, Axelar, Forwarder"
    exit 1
    ;;
esac
