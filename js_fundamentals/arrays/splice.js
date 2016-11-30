function slice(array, start, end) {
  var newArray = [];
   
  if (!start) {
    start = 0;
  }

  if (start < 0 && Math.abs(start) > array.length)  {
    start = 0;
  }

  if (start < 0) {
    start = array.length + start;
  }

  if (end == undefined || end > array.length) {
    end = array.length;
  }

  if (end < 0) {
    end = array.length + end;
  }

  for (var i = start; i < end; i++) {
    newArray[newArray.length] = array[i];
  }

  return newArray;
}

// slice([1, 2, 3]);                 // [1, 2, 3]
// slice([1, 2, 3], 0);              // [1, 2, 3]
// slice([1, 2, 3], 1);              // [2, 3]
// slice([1, 2, 3], -1);             // [3]
// slice([1, 2, 3], -2);             // [2, 3]
// slice([1, 2, 3], -6);             // [1, 2, 3]
// slice([1, 2, 3], 1, 2);           // [2]
// slice([1, 2, 3], 2, 0);           // []

function splice(array, start, deleteCount) {
  var newArray = [];

  if (start < 0) {
    start = array.length + start;
  }

  if (deleteCount === undefined) {
    deleteCount = array.length - start;
  }

  var tempArray = slice(array, 0, start);

  for (var i = 0, length = tempArray.length; i < length; i++) {
    newArray[newArray.length] = tempArray[i];
  }

  for (var i = 3, length = arguments.length; i < length; i++) {
    newArray[newArray.length] = arguments[i];
  }

  var tempArray = slice(array, start + deleteCount, array.length)
  for (var i = 0, length = tempArray.length; i < length; i++) {
    newArray[newArray.length] = tempArray[i];
  }

  return newArray;
}

// splice([1, 2, 3], 0);                      // []
// splice([1, 2, 3], 1, 2);                   // [1]
// splice([1, 2, 3], -1, 1);                  // [1, 2]
// splice([1, 2, 3], 1);                      // [1]
// splice([1, 2, 3], -1);                     // [1, 2]
// splice([1, 2, 3], 1, 3);                   // [1]
// splice([1, 2, 3], 1, 1, 'two')             // [1, "two", 3]
// splice([1, 2, 3], 1, 2, 'two', 'three')    // [1, "two", "three"]
// splice([1, 2, 3], 1, 0);                   // [1, 2, 3]
// splice([1, 2, 3], 0, 1);                   // [2, 3]

