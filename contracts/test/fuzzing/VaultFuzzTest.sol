// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "../../Vault.sol";

contract VaultFuzzTest is Vault {
    constructor() Vault("123asd123") {}

    function echidna_test_find_password() public view returns (bool) {
        return s_locked == true;
    }
}

// Fuzz test using echidna to find password https://github.com/crytic/echidna
// command
// echidna-test /src/contracts/test/fuzzing/VaultFuzzTest.sol --contract VaultFuzzTest --config /src/contracts/test/fuzzing/config.yaml