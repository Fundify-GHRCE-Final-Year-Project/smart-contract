#!/bin/bash
set -e

# Start local Anvil if not running by running command "anvil"
# If you installed foundry it will be available by default in your terminal

# Export your deployer private key (Anvil's default first account)
export PRIVATE_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
export FUNDIFY_ADDRESS=0x9E60F7933Ad5Fcc9A77efb05E501ba8909F64299

# Deploy and create projects in one go
forge script script/testing/testing.s.sol:DeployAndCreateFundify \
    --rpc-url http://localhost:8545 \
    --broadcast \
    --private-key $PRIVATE_KEY

