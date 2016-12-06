function areArraysEqual(array1, array2) {
  if (array1.length !== array2.length) {
    return false;
  }

  array1.sort();
  array2.sort();

  for (var i = 0, length = array1.length; i < length; i++) {
    if(array1[i] !== array2[i]) {
      return false;
    }
  }

  return true;
}
  //
  // areArraysEqual([1, 2, 3], [1, 2, 3]);                  // true
  // areArraysEqual([1, 2, 3], [3, 2, 1]);                  // true
  // areArraysEqual(['a', 'b', 'c'], ['b', 'c', 'a'])       // true
  // areArraysEqual(['1', 2, 3], [1, 2, 3]);                // false
  // areArraysEqual([1, 1, 2, 3], [3, 1, 2, 1]);            // true
  // areArraysEqual([1, 2, 3, 4], [1, 1, 2, 3]);            // false
  // areArraysEqual([1, 1, 2, 2], [4, 2, 3, 1]);            // false