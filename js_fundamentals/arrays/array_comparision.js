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
