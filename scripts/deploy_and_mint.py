from brownie import UBNFT, config, network
from scripts.util import get_account

token_uri = 

def deploy_and_mint():
    account = get_account()

    ubnft = UBNFT.deploy({"from":account}, publish_source=config["networks"][network.show_active()].get('verify'))
    tx = ubnft.createLogoNFT(token_uri,{"from":account})
    tx.wait(1)

    def main():
        deploy_and_mint()