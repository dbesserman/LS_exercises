function productOfSums(array1, array2) {
  var result;
  result = total(array1) * total(array2);
  return result;
}

function total(numbers) {
  var sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }

  return sum;
}
