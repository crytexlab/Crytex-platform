const hre = require("hardhat");

async function main() {
  const Token = await hre.ethers.getContractFactory("CTXToken");
  const token = await Token.deploy();

  await token.waitForDeployment();

  console.log("CTX Token deployed to:", await token.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
