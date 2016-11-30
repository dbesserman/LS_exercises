function concat(array) {
  var newArr = copy(array)
  var elements = arguments;

  for (var i = 1; i < elements.length; i++) {


    if (Array.isArray(elements[i])) {
      for (var j = 0; j < elements[i].length; j++) {
        newArr.push(elements[i][j]);
      }
    } else {
      newArr.push(elements[i]);
    }
  }

  return newArr
}

function copy(array) {
  kkkkkkdebugger;
  var values = []; 

  for (var i = 0; i < array.length; i++) {
    values.push(array[i]); 
  }
  
  return values;
}
