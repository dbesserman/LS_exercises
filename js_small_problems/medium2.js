// 1. Uppercase Check
// input: string
// true if all alphabet are uppercase, false otherwise
// data-str:
// -regexp
// algo:
// - if there is alpha lower, return false, else true

// function isUppercase(str) {
//    return !(str.match(/[a-z]/)) 
// }

// 2. Delete Vowels
// input: array of strings
// output: str without vowels
// data str:
// map
// string replace with Regexp vowels by empty string

// function removeVowels(strings) {
//   return strings.map(function(string) {
//     return string.replace(/[aeiou]/ig, '');
//   });
// }
//
// 3. Letter Counter
// input: string
// output: object with count of upper, lower and number
// data str: for loop, and regex
// algo:
// create 3 counters
// itterate through each chra of the string
// use regex to increment the right count

// function letterCaseCount(str) {
//   var lowerCount = str.match(/[a-z]/g).length;
//   var upperCount = str.match(/[A-Z]/g).length;
//   var othersCount = str.match(/[^a-z]/ig).length;
  
//   return { 
//     lowercase: lowerCount,
//     uppercase: upperCount,
//     neither: othersCount,
//   };
// }
//
// 4. Capitalize Word
// input: string
// output: capitalized string

// function wordCap(str) {
//   var words = str.split(' ');
//   var capitalizedWords = words.map(function(word) {
//     return word[0].toUpperCase() + word.slice(1).toLowerCase();
//   });

//   return capitalizedWords.join(' ');
// }

// 5. Swap Case
// input: string
// outuput: string with swapped case
// data str:
// array
// algo: 
// - split the string
// - itterate throught the array swapping each case
// - join the array

// function swapcase(str) {
//   return str.split('').map(function(char) {
//     if (char.match(/[a-z]/i)) {
//       return swapCharCase(char);
//     } else {
//       return char;
//     }
//   }).join('');
// }


// function swapCharCase(char) {
//   if (char.match(/[a-z]/)) {
//     return char.toUpperCase();
//   } else if (char.match(/[A-Z]/)) {
//     return char.toLowerCase();
//   }
// }

// 6.Staggered Caps 1
// input: string with 1 of 2 caracters uppercase
// data: arry
// alog:
    // - split string into chars
    // - itterate throught the array with a for loop
    // - if the index is even uppercase
    // - else lowercase

// function staggeredCase(str) {
//   var chars = str.split('');

//   chars.map(function(char, i) {
//     if (i % 2 === 0) {
//       chars[i] = chars[i].toUpperCase();
//     } else if (i % 2 === 1) {
//       chars[i] = chars[i].toLowerCase();
//     }
//   }).join('');
// }

// 7. Staggered caps 2


// function staggeredCase(words) {
//   var needUpper = true;
//   var newChar;

//   return words.split('').map(function(char) {
//     if (char.match(/[a-z]/i)) {
//       if (needUpper) {
//         newChar = char.toUpperCase();
//       } else {
//         newChar = char.toLowerCase();
//       }

//       needUpper = !needUpper;
//       return newChar
//     } else {
//       return char;
//     }
//   }).join('');
// }

// 8. How long are you
// input: string
// output: array with every word with the word length joined
// data str:
// - array
// algo
// - split the string
// - map the array
// - return the substring, a blank space and the substring length

// function wordLengths(str) {
//   if (str === '') {
//     return [];
//   }

//   var words = str.split(' ');
//   return words.map(function(word) {
//     return word + ' ' + word.length.toString();
//   });
// }

// 9. Search word 1
// input: string word, string sentence
// output: int number of occurence of the word string
// data str: regexp
// algo: turn the word into regex, match it to the sentence and measure the length

// var text = 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?'


// function searchWord(word, sentence) {
//   var regex = new RegExp(word, 'gi');
//   return sentence.match(regex).length;
// }

// 10. Search Word 2

// function searchWord(word, sentence) {
//   var regex = new RegExp(word, 'gi');
//   return sentence.replace(regex, '**' + word.toUpperCase() + ' **');
// }
