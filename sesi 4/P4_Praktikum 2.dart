// langkah 1 - 2
// void main(){
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);
// }

// langkah 3
void main(){
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // Menambahkan elemen ke Set menggunakan .add() untuk names1
  names1.add("Yonatan Efrassetyo");
  names1.add("2241720063");
  // Menambahkan elemen ke Set menggunakan .addAll() untuk names2
  names2.addAll({"Yonatan Efrassetyo", "2241720063"});
  print(names1);
  print(names2);
}