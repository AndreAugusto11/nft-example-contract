module.exports = {
  contracts_directory: './src/contracts/',
  contracts_build_directory: './src/abis/',

  networks: {
    development: {
     host: "127.0.0.1",     // Localhost (default: none)
     port: 7545,            // Standard Ethereum port (default: none)
     network_id: "*",       // Any network (default: none)
    },
  },

  // Set default mocha options here, use special reporters etc.
  // mocha: {
    // timeout: 100000
  // },

  compilers: {
    solc: {
      version: "0.8.13",
      settings: {
       optimizer: {
         enabled: false,
         runs: 200
       },
      }
    }
  },
};
