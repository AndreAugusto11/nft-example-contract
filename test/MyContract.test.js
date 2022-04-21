const { assert } = require("chai");

const MyContract = artifacts.require("MyContract");

require('chai')
  .use(require('chai-as-promised'))
  .should();

contract('MyContract', async (accounts) => {
  let contract;

  describe('deployment', async () => {
    it('deploys successfully', async () => {
      contract = await MyContract.deployed();
      const address = contract.address;
      assert.notEqual(address, '');
      assert.notEqual(address, null);
      assert.notEqual(address, undefined);
      assert.notEqual(address, 0x0);
    });

    it('metadata is correct', async () => {
      const name = await contract.getName();
      assert.equal(name, 'NAME');

      const symbol = await contract.getSymbol();
      assert.equal(symbol, 'SYMBL');
    });
  });

  describe('minting', async () => {
    it('mints successfully', async () => {
      const response = await contract.mint('ntf1');
      assert.notEqual(response.receipt, undefined);
      assert.equal(response.receipt.status, true);
    });
  });
});