// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Task_05 {
   enum Status {
       Pending,
       Active,
       Inactive
   }


   Status public currentStatus; // Переменная типа Status
   int256[] public celsiusTemperatures;


   function setStatus(Status _status) external {
      currentStatus = _status; // Установка текущего статуса
   }


   function getBalance() external view returns (uint256) {
      return uint256(currentStatus);
   }


   function addCelsiusTemperature(int256 _celsius) external {
      celsiusTemperatures.push(_celsius);
   }


   function getAllFahrenheitTemperatures() external view returns (int256[] memory) {
      int256[] memory fahrenheitTemperatures = new int256[](celsiusTemperatures.length);
      for (uint256 i = 0; i < celsiusTemperatures.length; i++) {
         fahrenheitTemperatures[i] = (celsiusTemperatures[i] * 9) / 5 + 32;
      }
      return fahrenheitTemperatures;
   }
}
