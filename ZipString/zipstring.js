// get the character from the specific index key
function getChar(index, arr, nullChar = '.'){
  // if the index[value] doesn't exist, return a '.'
  // => unless a custom return string value is required.
  // => Some require a space, the index key, or previous index value.
  return (arr[index] ? arr[index] : nullChar);
}

function getIndex(index, arr1, arr2){
  var str = '';
  // get characters from the strings, from their specified index keys
  str += getChar(index, arr1);
  str += getChar(index, arr2)
	return str;
}

function zipit(str1, str2){
  var maxLength = Math.max(str1.length, str2.length);
  var crunched = '';

  // No need to run the loop, if no characters were supplied
  if(maxLength > 0){
    for(var i = 0; i < maxLength; i ++){
      crunched += getIndex(i, str1, str2);
    }
  }
  console.log(crunched);
}

zipit('Flowers','roses');
// => Frloosweesr.s.

zipit('','');
// => ''
