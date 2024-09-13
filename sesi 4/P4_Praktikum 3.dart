// langkah 1 - 2
// void main(){
//   var gifts = {
//   // Key:    Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1
// };
// var nobleGases = {
//   2: 'helium',
//   10: 'neon',
//   18: 2,
// };
// print(gifts);
// print(nobleGases);
// }

// langkah 3
void main(){
  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Yonatan Efrassetyo';
  gifts['NIM'] = '2241720063';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[20] = 'Yonatan Efrassetyo';
  nobleGases[22] = '2241720063';
  
  var mhs1 = Map<String, String>();
    mhs1['nama'] = 'Yonatan Efrassetyo';
    mhs1['NIM'] = '2241720063';

  var mhs2 = Map<int, String>();
  mhs2[27] = 'Yonatan Efrassetyo';
  mhs2[22417] = '2241720063';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}