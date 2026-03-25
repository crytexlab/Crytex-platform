const { ethers } = require("ethers");

const provider = new ethers.JsonRpcProvider("https://rpc.ankr.com/eth");

async function getBalance(address) {
  const balance = await provider.getBalance(address);
  return ethers.formatEther(balance);
}

module.exports = { getBalance };
