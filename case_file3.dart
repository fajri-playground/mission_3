void main() {
  final String kata = 'Katak';
  final String kataHurufKecil = kata.toLowerCase();

  final String kataKebalikan = kataHurufKecil.split('').reversed.join('');
  final bool statusPalindrome = kataHurufKecil == kataKebalikan;

  const List<String> daftarVokal = ['a', 'i', 'u', 'e', 'o'];
  int jumlahVokal = 0;

  for (final String huruf in kataHurufKecil.split('')) {
    if (daftarVokal.contains(huruf)) {
      jumlahVokal++;
    }
  }

  print('Analisis Kata: "$kata"');
  print('- Status Palindrome: ${statusPalindrome ? 'IYA!' : 'TIDAK'}');
  print('- Jumlah Huruf Vokal: $jumlahVokal');
}
