# nftCollection
This repository contains a smart contract for creating and managing NFTs (Non-Fungible Tokens) using the ERC721 standard. The contract is implemented in Solidity and makes use of OpenZeppelin libraries to ensure security and standard compliance and Hardhat for deployment.

![Solidity](https://img.shields.io/badge/solidity-0.8.10-blue.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)


## Dependencies.

![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-5.0.2-blue.svg)
![Hardhat](https://img.shields.io/badge/Hardhat-2.22.5-orange.svg)
- **OpenZeppelin**: Utilizes OpenZeppelin's ERC721 standard contract and additional extensions.
- **Hardhat**: Used for compiling, deploying, and testing the contract.

## Deployment Guide
## Prerequisites
- ![Node.js](https://img.shields.io/badge/Node.js-43853D?style=flat&logo=node.js&logoColor=white) and ![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white) installed.
- ![Hardhat](https://img.shields.io/badge/Hardhat-2.22.5-orange.svg) installed.
- An ![Alchemy](https://img.shields.io/badge/Alchemy-blue.svg?style=flat&logo=alchemy&logoColor=white) or ![Infura](https://img.shields.io/badge/Infura-E87043.svg?style=flat&logo=infura&logoColor=white) account for accessing the Polygon network.
- ![MetaMask](https://img.shields.io/badge/MetaMask-8C00FF.svg?style=flat&logo=metamask&logoColor=white) browser extension installed and configured.
- A wallet with some MATIC tokens for deployment.

## Step-by-Step Instructions

To set up the project locally, follow these steps:

1. **Clone the repository**

    ```sh
    git clone https://github.com/your-username/your-repo.git
    cd your-repo
    ```

2. **Install dependencies**

    ```sh
    npm install
    ```

3. **Complete the `secrets.json` file**

    Complete the a `secrets.json` file in the root directory of the project with the following content:

    ```json
    {
      "apiKey": "your-alchemy-api-key",
      "privateKey": "your-wallet-mnemonic or private-key"
    }
    ```

4. **Compile the contract**

    ```sh
    npx hardhat compile
    ```

5. **Deploy the contract**

  - Update the `hardhat.config.js` file with the Alchemy API URL and your wallet mnemonic, saved in the secrets.json file.
  - Then run the deployment script choosing the network you want:

    ```sh
    npx hardhat run scripts/deploy.js --network your-desired-network
    ```

6. **Interact with the contract**

    After deployment, you can interact with the contract using Hardhat tasks or scripts.


## License.
This project is licensed under the MIT License - see the LICENSE file for details.

## Creator

**AlexkaDev** - [Your GitHub Profile](https://github.com/Alexka-Dev)
