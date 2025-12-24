// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Task_05 {
   enum Status {
       Pending,
       Active,
       Inactive
   }


   Status public currentStatus; // Переменная типа Status


   function setStatus(Status _status) external {
      currentStatus = _status; // Установка текущего статуса
   }


   function getBalance() external view returns (uint256) {
      return uint256(currentStatus);
   }


   function toFahrenheit(int256[] calldata celsiusArr) external pure returns (int256[] memory) {
      int256[] memory fahrenheitArr = new int256[](celsiusArr.length);
      for (uint256 i = 0; i < celsiusArr.length; i++) {
         fahrenheitArr[i] = (celsiusArr[i] * 9) / 5 + 32;
      }
      return fahrenheitArr;
   }
}
