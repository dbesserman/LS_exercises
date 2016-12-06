// 2. Combining arrays

// function union(array1, array2) {
//   var newArr = [];
//   for (var i = 0; i < array1.length; i++) {
//     if (newArr.indexOf(array1[i]) === -1) {
//       newArr.push(array1[i])
//     }
//   }
//   for (var i = 0; i < array2.length; i++) {
//     if (newArr.indexOf(array2[i]) === -1) {
//       newArr.push(array2[i])
//     }
//   }

//   return newArr;
// }

// 3. Halvies

// function halvsies(array) {
//   var container = [];
//   var idx = Math.ceil(array.length / 2);

//   container.push(array.slice(0, idx)); 
//   container.push(array.slice(idx)); 

//   return container;
// }

// 4. Find The Duplicate

// function findDup(array) {
//   array.sort();

//   for (var i = 0; i < array.length; i++) {
//     if (array[i] === array[i + 1]) {
//       return array[i];
//     }
//   }
// }

// 5. Combine 2 lists

// function interleave(arr1, arr2) {
//   var newArr = [];

//   for (var i = 0; i < arr1.length; i++) {
//     newArr.push(arr1[i], arr2[i]);
//   }

//   return newArr;
// }

// 6. Multiplicative average

// function showMultiplicativeAverage(array) {
//   var product = array.reduce(function(prod, element) {
//     return prod * element;
//   });

//   return (product / array.length).toFixed(3);
// }

// 7.Multiply List

// function multiplyList(arr1, arr2) {
//   var result = [];

//   for (var i = 0; i < arr1.length; i++) {
//     result.push(arr1[i] * arr2[i]);
//   }

//   return result;
// }

// 8, Digits List

// function digitList(num) {
//   return num.toString().split('').map(function(figure) {
//     return parseInt(figure);
//   });
// }

// 9. How Many
// var vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck'];

// function countOccurrences(array) {
//   count = {}  

//   for (var i = 0; i < array.length; i++) {
//     count[array[i]] = count[array[i]] || 0;
//     count[array[i]] += 1; 
//   }

//   displayOccurences(count);
// }

// function displayOccurences(obj) {
//   for (var item in obj) {
//     console.log(item + ' => ' + obj[item])
//   }
// }

// 10. Array Average

function average(array) {
  var arraySum = array.reduce(function(sum, element) {
    return sum + element;
  });

  return parseInt(arraySum / array.length);
}
