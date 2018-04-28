function zipit(str1='', str2=''){
  let maxLength = Math.max(str1.length, str2.length);
  let str = '';
  // No need to run the loop, if no characters were supplied
  if(maxLength > 0){
    for(let index = 0; index < maxLength; index++){
       // if the index[value] doesn't exist, return a '.'
      str += (str1[index] ? str1[index] : '.');
      str += (str2[index] ? str2[index] : '.');
    }
  }

  console.log(str);
}

zipit('Flowers','Roses');
// => 'FRloosweesr.s.'

zipit('','');
// => ''
