// import "dotenv/config";
// import hardhatToolboxViemPlugin from "@nomicfoundation/hardhat-toolbox-viem";
// import { defineConfig } from "hardhat/config";

// export default defineConfig({
//   plugins: [hardhatToolboxViemPlugin],
//   solidity: {
//     version: "0.8.28",
//   },
//   networks: {
//     sepolia: {
//       type: "http",
//       url: process.env.SEPOLIA_RPC_URL!,
//       accounts: [process.env.SEPOLIA_PRIVATE_KEY!],
//     },
//   },
// });

import hardhatToolboxViemPlugin from "@nomicfoundation/hardhat-toolbox-viem";
import { configVariable, defineConfig } from "hardhat/config";

export default defineConfig({
  plugins: [hardhatToolboxViemPlugin],
  solidity: {
    version: "0.8.28",
  },
  networks: {
    sepolia: {
      type: "http",
      url: configVariable("SEPOLIA_RPC_URL"),
      accounts: [configVariable("SEPOLIA_PRIVATE_KEY")],
    },
  },
});
