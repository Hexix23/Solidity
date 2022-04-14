## Deploy Multisig Contract on Remix

Multi-Signatute Wallets allow a wallet to be controlled by more than 1 owner. In order to approve transactions a thrsehold number of signatures are required. E.g 2/3 Multisig Wallet -> if there are 3 owners, at least 2 have to apprive. A popular, secure and trusted [Multi-Sig Wallet is Gnosis](https://gnosis-safe.io/)

### Deploy Multi-Sig Contract Using Remix

1. **Compile and deploy contracts on JVM to check all is working well**

- Copy MultiSigWallet.sol Solidity Code into a file in Remix rename MultiSigWallet.sol
- Select Solidity Compiler Page
  - On Compiler Options dropdown select 0.8.3 version
  - Click "Compile MultiSigWallet.sol" button
- Select Deploy and Run Transactions Page
  - Environment dropdown select JavaScript VM
  - Accounts dropdwon -> pick any of the accounts in dropdown
- Deploy Button
  - Enter the parameters for deployment for
    - For _OWNERS use an array of addresses e.g first 3 addresses in Account dropdown e.g => ["0x5B38Da6a701c568545dCfcB03FcB875f56beddC4","0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2","0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c"]
    - For _NUMCONFIRMATIONSREQUIRED number confirmations e.g is 3 owners like above you need at least => 2
  - Click deploy button
- Deployed Contracts
  - Scroll down to deployed contracts section and click on deployed contract
  - View buttons for all the functions you can carry out on contract e.g 
    - Call functions => getOwners, getTransaction, getTransactionCount, isConfirmed, owners, transactions etc
    - Transacting functions => submiTransaction, confirmTransaction, executeTransaction, revokeTransaction

2. **Deploy Contract to Kovan Testnet**
---
- Select Deploy and Run Transactions Page
  - Environment dropdown select Injected Web3 (to allow use of Metamask)
  - Accounts dropdwon will have first currently selected Metamask account
- Get some testnet ETH, Kovan ETH into the deploying account 
  - Copy the address from accounts 
  - Go to [https://linkfaucet.protofire.io/kovan](https://linkfaucet.protofire.io/kovan) paste account and request some Kovan ETH
- Deploy Button
  - Enter the parameters for deployment for
    - For _OWNERS use an array of addresses e.g first 3 addresses in Account dropdown e.g => ["0x5B38Da6a701c568545dCfcB03FcB875f56beddC4","0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2","0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c"]
    - For _NUMCONFIRMATIONSREQUIRED number confirmations e.g is 3 owners like above you need at least => 2
  - Click deploy button and confirm transaction on MetaMask
- Deployed Contracts
  - Scroll down to deployed contracts section and click on deployed contract
  - View buttons for all the functions you can carry out on contract e.g 
    - Call functions => getOwners, getTransaction, getTransactionCount, isConfirmed, owners, transactions etc
    - Transacting functions => submiTransaction, confirmTransaction, executeTransaction, revokeTransaction
- Verify Contracts
  - User REMIX to view the contracts
  - Go to "Plugin Manager"
    - Type "ETHERSCAN - CONTRACT VERIFICATION"
    - Activate the plugin
  - Go to the plugin
    - Click "Settings"
      - Enter the API Key from Etherscan
    - Click "Home"
      - Select the contract you want to verify
      - Select the constructor arguments
        - Go to etherscan.io and search for the contract
        - Click " Click to see more "
        - Go " Input Data "
        - Copy the data from the constructor { at the end of the input data after "0033"}
      - Paste the contract address
      - Click "Verify Contract"

### Contract Address Deployed Example
[https://kovan.etherscan.io/address/0x3465732ae320d35872a23b110d244c1714fee816](https://kovan.etherscan.io/address/0x3465732ae320d35872a23b110d244c1714fee816)





