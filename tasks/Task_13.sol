// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleUsage {
    // 1) Пример использования assert
    function assertExample(uint256 _value) public pure {
        // Проверка должна основываться на том, что переданное значение должно быть не равно 0
        assert(_value != 0);
    }

    // 2) Пример использования revert
    function revertExample(bool _condition) public pure {
        // Проверка должна основываться на том, что при ложном переданном значении выполнять revert
        if (!_condition) {
            revert("Invalid condition");
        }
    }

    // 3) Пример использования if-else
    function ifElseExample(uint256 _value) public pure returns (string memory) {
        // Закончить оператор if конструкцией else. В else возвращать "Value is 10 or less"
        if (_value > 10) {
            return "Value is greater than 10";
        } else {
            return "Value is 10 or less";
        }
    }

    // 4) Пример использования else if
    function elseIfExample(uint256 _value) public pure returns (string memory) {
        // Проверяем и исправляем логические условия:
        // >10, ==10, иначе <10
        if (_value > 10) {
            return "Value is greater than 10";
        } else if (_value == 10) {
            return "Value is exactly 10";
        } else {
            return "Value is less than 10";
        }
    }

    // 5) Переписать ternaryExample с помощью if-else
    function ternaryExample(uint256 _value) public pure returns (string memory) {
        if (_value > 10) {
            return "Value is greater than 10";
        } else {
            return "Value is 10 or less";
        }
    }
}
