var myBoolean = true;
var myString = 'hello';
var myArray = [];
var myOtherString = '';

if (myBoolean) {
  console.log('Hello');
}

// true is true

if (!myString) {
  console.log('World');
}

// 'hello' is truthy. !'hello' is false.

if (!!myArray) {
  console.log('World');
}

// [] is truthy. !![] is true.

if (myOtherString || myArray) {
  console.log('!');
}

// '' is falsey but [] is truthy so the if statement evaluates to true
