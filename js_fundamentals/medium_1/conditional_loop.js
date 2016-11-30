// var i = 0;
// while (i < 10) {
//   if (i % 3 === 0) {
//     console.log(i);
//   } else {
//     i += 1;
//   }
// }

// Wont have the expected effect because the incrementation wont ever happen.
// Solution

var i = 0;
while (i < 10) {
  if (i % 3 === 0 && i !== 0) {
    console.log(i);
  } 

  i += 1;
}
