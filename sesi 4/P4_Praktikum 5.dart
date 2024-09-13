// langkah 1 - 2
// void main(){
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }

// langkah 3
// void main() {
//   List<int> record = [1, 2];
//   print('Sebelum ditukar: $record');
//   record = tukar(record);
//   print('Sesudah ditukar: $record');
// }

// List<int> tukar(List<int> record) {
//   if (record.length != 2) {
//     throw ArgumentError('Record harus berisi tepat 2 elemen.');
//   }
//   int a = record[0];
//   int b = record[1];
//   return [b, a];
// }

// langkah 4
// void main() {
//   List<dynamic> mahasiswa = ['Yonatan Efrassetyo', 2241720063];

//   print(mahasiswa);
// }

// langkah 5
void main() {
  var mahasiswa2 = (first: 'Yonatan Efrassetyo', a: 2241720063, b: true, last: '2241720063');
  print(mahasiswa2.first);
  print(mahasiswa2.a);   
  print(mahasiswa2.b);  
  print(mahasiswa2.last);
}
