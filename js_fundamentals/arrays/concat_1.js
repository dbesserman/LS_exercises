function concat(array, secondArgument) {
  var newArr = copy(array)
  
  if (Array.isArray(secondArgument)) {
    for (var i = 0; i < secondArgument.length; i++) {
      newArr.push(secondArgument[i]);
    }
  } else {
    newArr.push(secondArgument);
  }

  return newArr
}

function copy(array) {
  var values = []; 

  for (var i = 0; i < array.length; i++) {
    values.push(array[i]); 
  }
  
  return values;
}

// concat([1, 2, 3], [4, 5, 6]);            // [1, 2, 3, 4, 5, 6]
// concat([1, 2], 3);                       // [1, 2, 3]
// concat([2, 3], ['two', 'three']);        // [2, 3, "two", "three"]
// concat([2, 3], 'four');                  // [2, 3, "four"]

// var obj = { a: 2, b: 3 };
// var newArray = concat([2, 3], obj);     // [2, 3, { a: 2, b: 3 }]
// obj.a = 'two';
// newArray;                                // [2, 3, { a: 'two', b: 3 }]
