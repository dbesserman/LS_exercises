// 1. Ddaaiillyy ddoouubbllee

// function crunch(str) {
//   var newStr = '';

//   for (var i = 0, length = str.length; i < length; i++) {
//     if (str[i] !== str[i-1]) {
//       newStr += str[i];
//     }
//   }

//   return newStr
// }

// 2. Bannerizer

// function printInBox(str) {
//   size = str.length;

//   outputDottedine(size);
//   outputEmptyline(size);
//   console.log('| ' + str + ' |');
//   outputEmptyline(size);
//   outputDottedine(size);
// }


// function outputDottedine(size) {
//   var result = '+-';

//   for (var i = 0; i < size; i++) {
//     result += '-';
//   }

//   result += '-+';

//   console.log(result);
// }

// function outputEmptyline(size) {
//   var result = '| ';

//   for (var i = 0; i < size; i++) {
//     result += ' ';
//   }

//   result += ' |';

//   console.log(result)
// }

// 3. Stringy Strigns

// function stringy(n) {
//   result = '';

//   for (var i = 0; i < n; i++) {
//     if (result[i - 1] === '1') {
//       result += '0';
//     } else {
//       result += '1';
//     }
//   }

//   return result;
// }

// 4. Fibonacci Number Location by Length

// function findFibonacciIndexByLength(n) {
//   var previous = 1;
//   var actual = 1;
//   var idx = 2;

//   while (true) {
//     if (actual.toString().length === n) {
//       return idx;
//     }

//     var temp = actual;

//     idx += 1;
//     actual = previous + actual;
//     previous = temp;
//   }
// }

// 5. Right Triangle

// function triangle(n) {
//   for (var i = 1; i <= n; i++) {
//     var line = '';

//     for (j = 0; j < n; j++) {
//       if (j < n - i) {
//         line += ' ';
//       } else {
//         line += '*'
//       }
//     }

//     console.log(line);
//   }
// }

// 6. Madlibs

// function madlibs() {
//   var noun = prompt('Enter a noun:')
//   var verb = prompt('Enter a verb:')
//   var adjective = prompt('Enter a adjective:')
//   var adverb = prompt('Enter a adverb:')

//   console.log('Do you ' + verb + ' your ' + adjective + ' ' + noun + ' ' + adverb + '? That\'s hilarious!')
// }

// 7. Double Doubles 

// function twice(n) {
//   if (isDouble(n)) {
//     return n;
//   } else {
//     return 2 * n;
//   }

//   function isDouble(n) {
//     var nString = n.toString()
//     var length = nString.length

//     if (length % 2 === 1) {
//       return false;
//     }

//     var halfLength = length / 2;
    
//     if (nString.slice(0, halfLength) === nString.slice(halfLength)) {
//       return true;
//     } else {
//       return false
//     }
//   }
// }

// 8. Grade Book

// function getGrade(gradeOne, gradeTwo, gradeThree) {
//   var average = (gradeOne + gradeTwo + gradeThree) / 3;
//   if (average >= 90 && average <= 100) {
//     return 'A';
//   } else if (average >= 80 && average < 90) {
//     return 'B';
//   } else if (average >= 70 && average < 80) {
//     return 'C';
//   } else if (average >= 60 && average < 70) {
//     return 'D';
//   } else {
//     return 'F';
//   }
// }

// 9. Clean Up Words

// function cleanUp(string) {
//   return string.replace(/[^A-Za-z]+/g, ' ')
// }

