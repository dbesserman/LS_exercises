var array = [1, 2, 3, 4];

function copy1(array) {
  var values = []; 

  for (var i = 0; i < array.length; i++) {
    values.push(array[i]); 
  }
  
  return values;
}

function copy2(array) {
  var values = []; 

  for (var i = array.length; i > 0; i--) {
    values.unshift(array[i - 1]); 
  }
  
  return values;
}
