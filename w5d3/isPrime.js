function isPrime(number) {
  for (let i = 2; i < Math.sqrt(number) + 1; i++) {
    if (number === 2) {
      return true;
      break
    }
    if (number % i === 0) {
      return false;
      break;
    }
  }
  return true;
}

// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));

function sumOfNPrimes(n) {
  let primes = [];
  let i = 2;
  while (primes.length < n) {
    if (isPrime(i)) {
      primes.push(i);
    }
    i++;
  }
  return primes.reduce((a, b) => a + b, 0);
}
console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));
