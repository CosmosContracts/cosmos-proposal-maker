# JUNOD_NODE="http://localhost:26657"
# KEY="juno1"
# KEYRING="test"
# CHAIN_ID="local-1"

# Run this on the testnet node itself.
JUNOD_NODE="https://rpc-juno.mib.tech:443"
KEY="dimi"
KEYRING="test"
CHAIN_ID="juno-1"
DENOM="ujuno"
UPGRADE_HEIGHT="15873890"
DEPOSIT="1000000000$DENOM" # 500 JUNOX

# MAINNET
# JUNOD_NODE="https://rpc.juno.strange.love:443"
# KEY="reece-main"
# KEYRING="os"
# CHAIN_ID="juno-1"
# DENOM="ujuno"
# DEPOSIT="1000000000$DENOM" # 1,000 JUNO
# UPGRADE_HEIGHT="12265007"  # https://www.mintscan.io/juno/blocks/12265007

# Info
UPGRADE_NAME="v22" # upgradehandler
UPGRADE_HUMAN_NAME=""
FEES="500000$DENOM" # 0.5

TITLE="Juno Upgrade ($UPGRADE_NAME)"

DESC="# Juno Upgrade (v22)\n\n This upgrade bump Cosmos SDK & CometBFT to the latest compatible versions.\n## Voting Options\nYES: Agree to proceed with the v22 network upgrade.\nNO: Disagree with the v22 network upgrade."
UPGRADE_INFO='{"binaries":{"linux/amd64":https://github.com/CosmosContracts/juno/releases/download/v22.0.0/junod"}}'

junod tx gov submit-legacy-proposal software-upgrade $UPGRADE_NAME --title="$TITLE" --description="$DESC" --deposit="$DEPOSIT" --upgrade-height="$UPGRADE_HEIGHT" --from=$KEY --keyring-backend=$KEYRING --chain-id=$CHAIN_ID --broadcast-mode=sync --node=$JUNOD_NODE --no-validate --upgrade-info=$UPGRADE_INFO --fees=$FEES --gas=2000000