function makeDoubler(name) {
  var method = function doubler(number) {
    console.log('This function was called by ' + name + '.');
    return number + number;
  }

  return method
}
