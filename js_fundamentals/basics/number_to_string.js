function integerToString(int) {
  var digits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  var result = ''

  while (int !== 0){
    var swap = int % 10;
    result =  digits[swap] + result;
    int = parseInt(int/10);
  } 

 return result || '0';
}
integerToString(4321);    // "4321"
integerToString(0);       // "0"
integerToString(5000);    // "5000"
