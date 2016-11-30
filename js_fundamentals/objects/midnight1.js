var MILLISECONDS_PER_MINUTES = 60000;

function timeOfDay(deltaMinutes) {
  var midnight = new Date('1/1/2000 00:00');
  var afterMidnight = new Date(midnight.getTime() + deltaMinutes * MILLISECONDS_PER_MINUTES);
  var hours = padWithZeroes(afterMidnight.getHours(). 2)
  var minutes = padWithZeroes(afterMidnight.getMinutes(), 2);
}

function padWithZeroes(number, length) {
  var numberString = number.toString();

  while (numberString.length < length) {
    numberString = '0' + numberString;
  }

  return numberString;
}
