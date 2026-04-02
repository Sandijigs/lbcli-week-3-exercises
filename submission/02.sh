#!/bin/bash
ADDR=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress "" bech32)
bitcoin-cli -regtest -rpcwallet=builderswallet getaddressinfo $ADDR | jq -r '.pubkey'
