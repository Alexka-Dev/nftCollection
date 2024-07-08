const { ethers } = require("hardhat");

async function main() {
  const deployer = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  const NFT = await ethers.getContractFactory("NFT");
  const nft = await NFT.deploy();

  console.log("NFT deployed to:", nft.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
