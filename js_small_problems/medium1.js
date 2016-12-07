// 1. Alphabetical Numbers

// var NUMBERS = ['zero', 'one', 'two', 'three', 'four', 'five',
//   'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
//   'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen',
//   'eighteen', 'nineteen', 'twenty']

// alphabeticNumberSort([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]);

// function alphabeticNumberSort(array) {
//   return array.sort(function(a, b) {
//     if (NUMBERS[a] > NUMBERS[b]) {
//       return 1;
//     } else if (NUMBERS[a] < NUMBERS[b]) {
//       return -1;
//     } else {
//       return 0;
//     }
//   });
// }

// 2. Sum of Digits
// input: positive integer
// output: integer sum of it's digits
// data str:
// - string to split
// - map to turn elements back into integers
// - reduce to add the elements

// function sum(num) {
//   var digits = num.toString().split('');
//   digits = digits.map(function(digit) {
//     return parseInt(digit);
//   });

//   return digits.reduce(function(sum, element) {
//     return element + sum;
//   });
// }

// 3. Multiply All Pairs
// input: 2 arrays of numbers
// output: 1 array with the product of each pair sorted
// data str:
// - array to contain elements and sort
// algorithm:
// - create a container
// - create a for loop inside a for loop (1 for each array)
// - push the products into the container
// - sort the array

// function multiplyAllPairs(arr1, arr2) {
//   var container = [];

//   for (var i = 0; i < arr1.length; i++) {
//     for (var j = 0; j < arr2.length; j++) {
//       container.push(arr1[i] * arr2[j]);
//     }
//   }

//   return container.sort(function(a, b) {
//     if (a > b) {
//       return 1;
//     } else if (a < b) {
//       return -1;
//     } else {
//       return 0;
//     }
//   });
// }

// 4. Sum of Sums
// inout: array of numvers
// outupt: integer sum of each leading sequence
// data str:
// - array to iterrate through
// - slices of array to reduce
// algo:
// create a result variable
// fir number between 1 and array length, reduce slices and add their sum to the result

// function sumOfSums(array) {
//   var result = 0;

//   for (var i = 1; i <= array.length; i++) {
//     result += array.slice(0, i).reduce(function(sum, element) {
//       return sum + element;
//     });
//   }

//   return result;
// }

//5. Leading Substring
// input: string
// output: array containing all substring starting with the first char
// data str. for loop
// algo
// - create an array container
// - from 1 to length of the str, add a n long substring to the container

// function substringsAtStart(str) {
//   var container = [];

//   for (var i = 1; i <= str.length; i++) {
//     container.push(str.substr(0, i));
//   }

//   return container;
// }

// 6. All Substrings
// input: string
// output: array of all substrings
// algo:
// create a container
// itterate through the string indexex with a for loop
// get the substrings of the sliced elements into the container

// function substrings(string) {
//   var container = [];

//   for (var i = 0; i < string.length; i++) {
//     var substrs = substringsAtStart(string.slice(i));
//     container = container.concat(substrs);
//   }

//   return container;
// }
// 7. Palindromic substrings
// input:string
// output: array containing palyndromes

// function palindromes(string) {
//   return substrings(string).filter(function(substr) {
//     return isPalindrome(substr) && substr.length > 1;
//   });
// }

// function isPalindrome(str) {
//   return str.split('').reverse().join('') === str;
// }

// 8. Grocery List
// input: array of arrays. inner array consist of a fruit and a quantity
// outpu: array of fruits
// data str: an array will serve as container
// we 'll use the foreach method to itterate throught the input elements and push the
// right number of fruits into the container,

// function buyFruit(fruits) {
//   var container = [];

//   fruits.forEach(function(fruit) {
//     for (var i = 0; i < fruit[1]; i++) {
//       container.push(fruit[0]);
//     }
//   });

//   return container;
// }

// 9. Inventory Item Transaction
// input: id(int) transaction
// output: array with the transactions with the correct id selected
// data str:
// Array, filter
// algo: filter the transactions, to get the one with the correct id

// var transactions = [ {id: 101, movement: 'in', quantity: 5, },
//   {id: 105, movement: 'in', quantity: 10, },
//   {id: 102, movement: 'out', quantity: 17, },
//   {id: 101, movement: 'in', quantity: 12, },
//   {id: 103, movement: 'out', quantity: 15, },
//   {id: 102, movement: 'out', quantity: 15, },
//   {id: 105, movement: 'in', quantity: 25, },
//   {id: 101, movement: 'out', quantity: 18, },
//   {id: 102, movement: 'in', quantity: 22, },
//   {id: 103, movement: 'out', quantity: 15, },];

// function transactionsFor(id, transactions) {
//   return transactions.filter(function(transaction) {
//     return transaction.id === id;
//   });
// }

// 10. Inventory Item Availability
// input: id and trnasactions
// output true if there is items, else false
// data str:
// use filte to separate in and out lements
// and reduce their quantity
// then compare

// function isItemAvailable(id, transactions) {
//   var transactions = transactionsFor(id, transactions); 
//   var quantIn = getQuantity('in', transactions);
//   var quantOut = getQuantity('out', transactions);

//   return quantIn > quantOut;
// }

// function getQuantity(status, transactions) {
//   var transactions = transactions.filter(function(trans) {
//     return trans.movement === status;
//   });

//   if (transactions.length === 0)  {
//     return 0
//   }

//   return transactions.map(function(trans) {
//     return trans.quantity;   
//   }).reduce(function(sum, quantity) {
//     return sum + quantity;
//   });
// }
