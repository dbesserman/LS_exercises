// 1. Double Char 1

// function repeater(string) {
//   var newStr = ''

//   for (var i = 0; i < string.length; i++) {
//     newStr = newStr + string[i] + string[i];
//   }

//   return newStr;
// }

//2. Double Char 2

// function doubleConsonants(string) {
//   var newStr = ''
//   for (var i = 0; i < string.length; i++) {
//     if (string[i].match(/[bcdfghjklmnpqrstvwxyz]/)) {
//       newStr = newStr + string[i] + string[i];
//     } else {
//       newStr = newStr + string[i];
//     }
//   }
//   return newStr;
// }

// 3. Reverse Numbers

// function reversedNumber(num) {
//   return parseInt(num.toString().split('').reverse().join(''));
// }

// 4. Middle char

// function centerOf(str) {
//   if (str.length % 2 === 0) {
//     return str.substr(str.length / 2 - 1, 2);
//   } else {
//     return str[(Math.floor(str.length /2))];
//   }
// }

// 5. return negative

// function negative(n) {
//   if (n < 0) {
//     return n;
//   } else {
//     return -n;
//   }
// }

// 6. Counting Up

// function sequence(n) {
//   var container = []; 
//   for (var i = 1; i <= n; i++) {
//     container.push(i);
//   }

//   return container;
// }

// 7. Name Swqping

// function swapName(str) {
//   return str.split(' ').reverse().join(', ');
// }

// 8. Sequence count

// function sequence(count, start) {
//   var container = [];

//   for (var i = 1; i <= count; i++) {
//     container.push(i * start);
//   }

//   return container;
// }

// 9. Reverse it 1

// function reverseSentence(str) {
//   return str.split(' ').reverse().join(' ');
// }

// 10 Reverse if 2

// function reverseWords(str) {
//   var words = str.split(' ')

//   return words.map(function(word) {
//     if (word.length >= 5) {
//       return word.split('').reverse().join('');
//     } else {
//       return word;
//     }
//   }).join(' ');
// }
