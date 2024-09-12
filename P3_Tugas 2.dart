void main() {
  // Fungsi untuk mengecek apakah suatu bilangan adalah bilangan prima
  bool isPrima(int number) {
    if (number < 2) {
      return false;
    }
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }
  // Loop dari 0 sampai 201 untuk mencari bilangan prima
  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i adalah bilangan prima.");
      print("2241720063 - Yonatan Efrassetyo");
    }
  }
}