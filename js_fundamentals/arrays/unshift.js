function shift(array) {
  if (array.length === 0) {
    return undefined;
  } else {
    array.splice(0, 1)
    return array;
  }
}

function unshift(array) {
  var tempArray = [];

  for (var i = 1; i < arguments.length; i++) {
    tempArray.push(arguments[i]);
  }

  for (var i = 0; i < array.length; i++) {
    tempArray.push(array[i]);
  }

  return tempArray
}

// shift([1, 2, 3]);                // [2, 3]
// shift([]);                       // undefined
// shift([[1, 2, 3], 4 ,5]);        // [4, 5]

// unshift([1, 2, 3], 5, 6);        // [5, 6, 1, 2, 3]
// unshift([1, 2, 3]);              // [1, 2, 3]
// unshift([4, 5], [1, 2 ,3]);      // [[1, 2, 3], 4, 5]
