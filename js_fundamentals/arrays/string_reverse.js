function reverse(inputForReversal) {
  if (typeof inputForReversal === 'string') {
    var result = '';

    for (var i = inputForReversal.length - 1; i >= 0; i--) {
      result += inputForReversal[i];
    }
  } else if (Array.isArray(inputForReversal)) {
    var result = [];
    for (var i = inputForReversal.length - 1; i >= 0; i--) {
      result.push(inputForReversal[i]);
    }
  }

  return result;
}

// reverse('Hello');          // elloH
// reverse('a')               // a
// reverse([1, 2, 3, 4]);     // [4, 3, 2, 1]
// reverse([]);               // []
