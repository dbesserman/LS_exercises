// 1, How Old is Teddy

// function displayTeddysAge() {
//   console.log('Teggy is ' + getTeddysAge() + ' years old!')
// }

// function getTeddysAge() {
//   var min = 20;
//   var max = 200;

//   return Math.floor(Math.random() * (max - min + 1)) + min;
// }

// 2. Searching 101

// function search() {
//   var numbers = [];

//   numbers.push(parseInt(prompt('Enter the 1st number:')));
//   numbers.push(parseInt(prompt('Enter the 2nd number:')));
//   numbers.push(parseInt(prompt('Enter the 3rd number:')));
//   numbers.push(parseInt(prompt('Enter the 4th number:')));
//   numbers.push(parseInt(prompt('Enter the 5th number:')));

//   var last = parseInt(prompt('Enter the last number:'));
    
//   if (numbers.indexOf(last) >= 0) {
//     console.log('The number ' + last + ' appears in [' + numbers + '].');
//   } else {
//     console.log('The number ' + last + ' does not appear in [' + numbers + '].');
//   }
// }

// 3. When will I Retire

// function displayRetirement() {
//   var age = parseInt(prompt('What is your age?'));
//   var retirementAge = parseInt(prompt('At what age would you like to retire?'));

//   var remaining = retirementAge - age;
//   var today = new Date
//   var actualYear = 1900 + today.getYear();
//   var retirementYear = actualYear + remaining;

//   console.log('It\'s ' + actualYear + '. You will retire in ' + retirementYear + '.');
//   console.log('You have only ' + remaining + ' years of work to go!');
// }

// // 4. Palyndrome 1

// function isPalindrome(str) {
//   var reverseStr = '';

//   for (var i = str.length - 1; i >= 0; i--) {
//     reverseStr += str[i];
//   }

//   return reverseStr === str;
// }

// // 5. Palyndrome 2

// function isRealPalindrome(str) {
//   formatedStr = str.replace(/[^0-9A-Za-z]+/g,'').toLowerCase();
//   return isPalindrome(formatedStr);
// }

// // 6. Palyndromic Number

// function isPalindromicNumber(num) {
//   return isPalindrome(num.toString());
// }

// 7 Running totals

// function runningTotal(array) {
//   var newArr = []

//   for (var i = 0; i < array.length; i++) {
//     newArr.push(array[i]);
//     if (i > 0) {
//       newArr[i] += newArr[i - 1];
//     }
//   }

//   return newArr
// }

// 8. Letter Swap

// function swap(str) {
//   var words = str.split(' ')
//   var reversedWords = words.map(function(word) {
//     var chars = word.split('');
//     var first = chars[0];
//     var last = chars[chars.length - 1];
//     chars[0] = last;
//     chars[chars.length - 1] = first;
//     return chars.join('');
//   });

//   return reversedWords.join(' ');
// }

// 9. Letter Counter 1

// function wordSizes(words) {
//   var count = {};
//   var wordsArray = words.split(' ');

//   for (var i = 0; i < wordsArray.length; i++) {
//     if (wordsArray[i].length === 0) {
//       continue;
//     }

//     count[wordsArray[i].length] = count[wordsArray[i].length] || 0;
//     count[wordsArray[i].length] += 1;
//   }

//   return count;
// }

// 10. Letter Counter 2

// function wordSizes(words) {
//   var count = {};
//   var wordsArray = words.replace(/[^A-Za-z ]/g, '').split(' ');

//   for (var i = 0; i < wordsArray.length; i++) {
//     if (wordsArray[i].length === 0) {
//       continue;
//     }

//     count[wordsArray[i].length] = count[wordsArray[i].length] || 0;
//     count[wordsArray[i].length] += 1;
//   }

//   return count;
// }


