var MILLISECONDS_PER_MINUTES = 60000;

function afterMidnight(timeString) {
  var midnight = new Date('1/1/2000 00:00');
  var inputTime = new Date('1/1/2000 ' + timeString);
  
  var result = (inputTime.getTime() - midnight.getTime()) / MILLISECONDS_PER_MINUTES;

  return result
}

function beforeMidnight(timeString) {
  if (timeString === '00:00') {
    return 0;
  }
  var nextMidnight = new Date('1/2/2000 00:00');
  var inputTime = new Date('1/1/2000 ' + timeString);

  var result = (nextMidnight.getTime() - inputTime.getTime()) / MILLISECONDS_PER_MINUTES;

  return result
}
