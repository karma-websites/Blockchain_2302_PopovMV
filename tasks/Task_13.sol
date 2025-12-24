// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleUsage {
    // 1) Пример использования assert:
    // Проверка должна основываться на том, что переданное значение НЕ равно 0
    function assertExample(uint256 _value) public pure {
        assert(_value != 0);
    }

    // 2) Пример использования revert:
    // При ложном переданном значении выполнять revert
    function revertExample(bool _condition) public pure {
        if (_condition == false) {
            revert("Invalid condition");
        }
    }

    // 3) Пример использования if-else:
    // else должен возвращать "Value is 10 or less"
    function ifElseExample(uint256 _value) public pure returns (string memory) {
        if (_value > 10) {
            return "Value is greater than 10";
        } else {
            return "Value is 10 or less";
        }
    }

    // 4) Пример использования else if:
    // Проверить и исправить логические условия
    function elseIfExample(uint256 _value) public pure returns (string memory) {
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
