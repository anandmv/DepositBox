pragma solidity >=0.4.22 <0.6.0;

import "./contracts/Accounting.sol";
import "./lib/auth.sol";

contract DepositAccount is Accounting, DSAuth {

    mapping (address => Account) accounts;

    constructor () {}

    function () public payable {
        depositETH(accounts[msg.sender], msg.sender, msg.value);
    }

    function deposit() public payable {
        depositETH(accounts[msg.sender], msg.sender, msg.value);
    }

    function depositERC20(address token, uint value) public {
        depositToken(accounts[msg.sender], token, msg.sender, value);
    }

    function withdraw(uint value) public {
        sendETH(accounts[msg.sender], msg.sender, value);
    }

    function withdrawERC20(address token, uint value) public {
        sendToken(accounts[msg.sender], token, msg.sender, value);
    }

    function ethBalance(address guy) public view returns(uint balance) {
        return accounts[guy].balanceETH;
    }

    function tokenBalance(address guy, address token) public view returns(uint balance) {
        return accounts[guy].tokenBalances[token];
    }

    function withdrawBaseETH() public auth {
        sendETH(base, msg.sender, base.balanceETH);
    }

    function withdrawBaseERC20(address token) public auth {
        sendToken(base, token, msg.sender, base.tokenBalances[token]);
    }
}