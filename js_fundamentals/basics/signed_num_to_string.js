function signedIntegerToString(int) {
  var digits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  var result = ''

  if (int < 0) {
    var negative = true;
    int = -int
  }

  while (int !== 0){
    var swap = int % 10;
    result =  digits[swap] + result;
    int = parseInt(int/10);
  } 

  if (negative) {
    result = '-' + result; 
  }

  return result || '0';
}
