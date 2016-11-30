// 1. Odd Numbers

// for (var i = 1; i < 100; i += 2) {
//   console.log(i);
// }

// 2. Even Numbers

// for (var i = 2; i < 100; i += 2) {
//   console.log(i);
// }

// 3. How Big is the Room

// METER_IN_FEETS = 10.7639;

// var length = parseInt(prompt('Enter the length of the room in meters:'));
// var width = parseInt(prompt('Enter the width of the room in meters:'));

// var areaInMeters = width * length;
// var areaInFeet = areaInMeters * METER_IN_FEETS;

// console.log('The area of the room is ' + areaInMeters + ' square meters (' + areaInFeet + 'square feet).');

// 4. Tip Calculator

// var bill = parseInt(prompt('What is the bill?'));
// var tipShare = parseInt(prompt('What is the tip percentage?'));

// var tip = bill * tipShare / 100;
// var total = bill + tip;

// console.log('The tip is $' + tip.toFixed(2));
// console.log('The total is $' + total.toFixed(2));

// 5. Sum or Product of Consecutive Integers

// var num = parseInt(prompt('Please enter an integer greater than 0:'));
// var op = prompt('Enter "s" to compute the sum, "p" to compute the product.');


// if (op === 's') {
//   var result = 0;

//   for(var i = 1; i <= num; i++) {
//     result += i;
//   } 
//   console.log('The sum of the integers between 1 and ' + num + ' is ' + result +'.')
// } else if (op === 'p') {
//   var result = 1;

//   for(var i = 1; i <= num; i++) {
//     result *= i;
//   } 

//   console.log('The product of the integers between 1 and ' + num + ' is ' + result +'.')
// }

// 6. Short Long Short

// function shortLongShort(str1, str2) {
//   if (str1.length > str2.length) {
//     var short = str2;
//     var long = str1;
//   } else {
//     var short = str1;
//     var long = str2;
//   }

//   return short + long + short;
// }

// 7. Leap Year 1

// function isLeapYear(year) {
//   if (year % 400 === 0) {
//     return true;
//   } else if (year % 100 === 0) {
//     return false;
//   } else if (year % 4 === 0) {
//     return true;
//   } else {
//     return false;
//   }
// }

// 8. Leap Year 2

// function isLeapYear(year) {
//   if (year < 1752 && year % 4 === 0) {
//     return true
//   } else if (year % 400 === 0) {
//     return true;
//   } else if (year % 100 === 0) {
//     return false;
//   } else if (year % 4 === 0) {
//     return true;
//   } else {
//     return false;
//   }
// }

// 9. Multiple of 3 and 5

// function multisum(n) {
//   var sum = 0;

//   for (var i = 1; i <= n; i++) {
//     if (i % 3 === 0 || i % 5 === 0) {
//       sum += i;
//     }
//   }

//   return sum;
// }

// 10. ASCII String Value

function asciiValue(str) {
  var sum = 0;

  for (var i = 0, length = str.length; i < length; i++) {
    sum += str[i].charCodeAt();
  }

  return sum;
}
