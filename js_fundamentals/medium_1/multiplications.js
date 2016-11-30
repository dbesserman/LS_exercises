function padLeft(num) {
  if (num.toString().length == 1) {
    return '  ' + num;
  } else if (num.toString().length == 2) {
    return ' ' + num;
  } else {
    return num;
  }
}

var row;

for (var i = 1; i <= 10; i++) {
  row = '';

  for (var j = 1; j <= 10; j++) {
    row += padLeft(i * j) + '  ';
  }
  console.log(row + '\n');
}
