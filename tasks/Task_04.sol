// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Task_04 {
   mapping(address => uint256) public balances; // Маппинг адресов на балансы


   function setBalance(address _addr, uint256 _balance) external {
       balances[_addr] = _balance; // Установка баланса для указанного адреса
   }


   function getBalance(address _addr) external view returns (uint256) {
       return balances[_addr];
   }


   function generateFibo(uint256 n) external pure returns (uint256) {
      uint256 a = 0;
      uint256 b = 1;
      uint256 next;
      do {
         next = a + b; // следующее число
         a = b;
         b = next;
      } while (next <= n);
      return next;
   }
}
