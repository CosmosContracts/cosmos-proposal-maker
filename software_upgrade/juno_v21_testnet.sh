# JUNOD_NODE="http://localhost:26657"
# KEY="juno1"
# KEYRING="test"
# CHAIN_ID="local-1"

# Run this on the testnet node itself.
JUNOD_NODE="https://rpc-juno-testnet.dimi.sh:443"
KEY="uni-validator"
KEYRING="test"
CHAIN_ID="uni-6"
DENOM="ujunox"
UPGRADE_HEIGHT="8559900"
DEPOSIT="500000000$DENOM" # 500 JUNOX

# MAINNET
# JUNOD_NODE="https://rpc.juno.strange.love:443"
# KEY="reece-main"
# KEYRING="os"
# CHAIN_ID="juno-1"
# DENOM="ujuno"
# DEPOSIT="1000000000$DENOM" # 1,000 JUNO
# UPGRADE_HEIGHT="12265007"  # https://www.mintscan.io/juno/blocks/12265007

# Info
UPGRADE_NAME="v2100alpha1" # upgradehandler
UPGRADE_HUMAN_NAME="Mandrake Patch"
FEES="500000$DENOM" # 0.5


TITLE="Juno Upgrade: $UPGRADE_HUMAN_NAME ($UPGRADE_NAME)"

DESC="# Juno Mandrake Patch Upgrade (v21)\n\n This upgrade fixes Mandrake Security Vulnerability\n## Voting Options\nYES: Agree to proceed with the v21 network upgrade.\nNO: Disagree with the v21 network upgrade."
UPGRADE_INFO='{"binaries":{"linux/amd64":"https://security.junonetwork.io/v21.0.0/junod"}}'

junod tx gov submit-legacy-proposal software-upgrade $UPGRADE_NAME --title="$TITLE" --description="$DESC" --deposit="$DEPOSIT" --upgrade-height="$UPGRADE_HEIGHT" --from=$KEY --keyring-backend=$KEYRING --chain-id=$CHAIN_ID --broadcast-mode=sync --node=$JUNOD_NODE --no-validate --upgrade-info=$UPGRADE_INFO --fees=$FEES --gas=2000000