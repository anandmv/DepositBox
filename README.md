# DepositBox
A contract which stores user deposit with basic functionality of banking like anyone can deposit to their own account and withdraw. Also note that the owner of the contract can balance excess ether and tokens to the base account, so no more lost tokens!

# Contracts
* Accounting - the contract keeps track of the total ETH and tokens that are accounted for, since both ETH and token balances can change without executing any code
* Sub Accounting — allows having Super accounts which contain sub accounts such that the super account can be drained (with all of the balance of the sub accounts) without needing to update the sub accounts. Useful in situations where you either need to refund individual sums or collect the total gathered (e.g. in a crowdfunding situation).

# In Brief
I see companies running most of their financial activities on the Ethereum blockchain in the future, so we need a better way of conceptualizing accounts and working with value. I have proposed an Accounting base for any finance related contracts for secure, easy, and readable handling of ether and ERC20 tokens. Suggestions and contributions are welcome!
