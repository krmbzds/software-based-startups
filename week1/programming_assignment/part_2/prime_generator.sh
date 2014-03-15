#!/usr/bin/env node

function isPrime(x) {
    for (var i=2; i<x; i++) {
        if (x % i == 0) {
            return false
        }
    }
    return true
}

function findPrimes(x) {
    var primes = [1];
    var index = 2;
    while (primes.length < x) {
        if (isPrime(index)) {
            primes.push(index);
        }
        index++;
    }
    return primes
}

var fs = require('fs');
var outfile = "prime_numbers.csv";
var out = findPrimes(100).join(',');
fs.writeFileSync(outfile, out);
console.log("Script: " + __filename + "\nWrote some prime numbers to: " + outfile);

