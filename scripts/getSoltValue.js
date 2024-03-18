// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const hre = require("hardhat");

async function main() {

    for (let i = 0; i < 5; i++) {
        const val = await hre.ethers.provider.getStorageAt("0xFadaf70F00E59E2BDDEF2cf74941EB901dEE4b4E", i);
        console.log("slot " + i + " value:", val)
    }
    
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
