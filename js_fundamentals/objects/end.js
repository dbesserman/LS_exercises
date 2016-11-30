penultimate('last word')               // 'last'
penultimate('Launch School is great!') // 'is'

function penultimate(string) {
  var words = string.split(' ');
  return words[words.length - 2]
}
