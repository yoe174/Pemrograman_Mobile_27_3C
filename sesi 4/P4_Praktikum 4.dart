// langkah 1 - 2
// void main(){
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
// print(list);
// print(list2);
// print(list2.length);
// }

// langkah 3
// void main(){
//   var list = [2241720063];    // NIM
//   var list1 = [1, 2, null, ...list];
//   print(list1);
//   var list3 = [0, ...?list1];
//   print(list3.length);
// }

// langkah 4
// void main(){
//   bool promoActive = true;
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print('promoActive = true: $nav');

//   promoActive = false;
//   nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print('promoActive = false: $nav');
// }

// langkah 5
// void main(){
//   var login = 'Manager';
//   var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
//   print('login = Manager: $nav2');

//   login = 'User';
//   nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
//   print('login = User: $nav2');

//   login = 'Admin';
//   nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
//   print('login = Admin: $nav2');
// }

// langkah 6
void main(){
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  
  assert(listOfStrings[1] == '#1'); // Mengecek apakah elemen index 1 adalah '#1'
  print(listOfStrings);
}