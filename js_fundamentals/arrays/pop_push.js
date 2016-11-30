function pop(array) {
  var swap;

  if (arguments.length === 0) {
    return undefined;
  } else {
    var lastIndex = array.length - 1;
    swap = array[lastIndex];
    array.splice(0, lastIndex - 1);
    return swap;
  }
}

// var array = [1, 2, 3]
// pop(array);                   // 3
// console.log(array)            // [1, 2]
// pop([]);                      // undefined
// pop([1, 2, ['a', 'b', 'c']]); // [ 'a', 'b', 'c' ]

function push(array) {
  var lastIndex = array.length -1;
   
  for (var i = 1; i < arguments.length; i++) {
    array[lastIndex + i] = arguments[i];
  }

  return array.length
}

// var array = [1, 2, 3]
// push(array, 4, 5, 6);         // 6
// console.log(array)            // [1, 2, 3, 4, 5, 6]
// push([1, 2], ['a', 'b']);     // 3
// push([], 1);                  // 1
// push([]);                     // 0
