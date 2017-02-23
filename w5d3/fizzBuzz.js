function fizzBuzz(array) {
  let new_array = [];
  array.forEach(function (number) {
    if (number % 3 === 0 && number % 5 === 0) {}
    else if (number % 3 === 0 || number % 5 === 0) {
      new_array.push(number)
    }
    else {}
  });
  return new_array;
}

console.log(fizzBuzz([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]));
