// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Task_02 {
   uint[] public dynamicArray; // Динамический массив
   uint[5] public fixedArray;   // Фиксированный массив из 5 элементов


   function addToDynamicArray(uint _value) external {
       dynamicArray.push(_value); // Добавление элемента в динамический массив
   }


   function sumArray() external view returns (uint256 sum) {
       for (uint256 i = 0; i < dynamicArray.length; i++) {
           sum += dynamicArray[i];
        }
    }


   function generateSquares(uint256 n) external pure returns (uint256[] memory) {
       uint256[] memory squares = new uint256[](n);
       for (uint256 i = 1; i <= n; i++) {
           squares[i - 1] = i * i;
       }
       return squares;
    }
}
