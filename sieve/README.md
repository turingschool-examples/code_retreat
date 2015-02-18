# Sieve of Eratosthenes

The Sieve of Eratosthenes is a simple, ancient algorithm for finding all
prime numbers smaller than a given limit. It does so by iteratively
removing the non-prime numbers until only primes are left.

Here are the general steps:

* Create a set of all the numbers from 2 through your upper limit
* For each number in the set...
  * Find all multiples of that number
  * Remove them from the set
  * IE, when your current number is `2`, you'd remove `4`, `6`, etc

The numbers left over are prime.
