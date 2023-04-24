const hre = require("hardhat");

async function main () {
    // We get the contract to deploy
    const Apple = await hre.ethers.getContractFactory('AppleToken');
    const initialSupply = hre.ethers.utils.parseEther("100000000000"); // 초기 공급량 설정
    const appleToken = await Apple.deploy(initialSupply);

    await appleToken.deployed();

    console.log("appleToken deployed to:", appleToken.address);
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });