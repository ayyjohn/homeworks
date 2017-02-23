function isSubstring(searchString, subString) {
  if (searchString.includes(subString)) {
    return true;
  }
  else {
    return false;
  }
}

console.log(isSubstring("time to program", "time"));
console.log(isSubstring("Jump for joy", "joys"));
