// langkah 1 -2
// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

// langkah 3
void main(){
  final List<dynamic> list = List.filled(5, null); // Membuat list dengan 5 elemen dan nilai default null
  list[1] = "Yonatan Efrassetyo";
  list[2] = "2241720063";

  print(list);
}
