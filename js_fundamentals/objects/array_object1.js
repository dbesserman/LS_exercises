var myArray = ['a', 'b', 'c'];
console.log(myArray[0]);
// a
console.log(myArray[-1]);
// undefined
myArray[-1] = 'd';
myArray['e'] = 5;
myArray[3] = 'f';

console.log(myArray[-1]);
// d
console.log(myArray['e']);
// undefined
console.log(myArray);
// ['a', 'b', 'c', 'f']
