void main() {
  // ✅ LANGKAH 1 TERPENUHI: Siapkan variabel String kata
  // 📝 Contoh input: "Katak"
  final String kata = 'Katak';

  // ✅ LANGKAH 2 TERPENUHI: Ubah semua huruf menjadi kecil
  // 🔤 toLowerCase() mengubah "Katak" menjadi "katak"
  final String kataHurufKecil = kata.toLowerCase();

  // ✅ LANGKAH 3 TERPENUHI: Balikkan kata tersebut
  // 🔄 split('') = pisah per huruf, reversed = balik urutan, join('') = gabung kembali
  // Contoh: "katak" -> ['k','a','t','a','k'] -> ['k','a','t','a','k'] -> "katak"
  final String kataKebalikan = kataHurufKecil.split('').reversed.join('');

  // ✅ LANGKAH 4 TERPENUHI: Bandingkan kata asli dengan kata dibalik
  // 🤔 Jika sama = Palindrome, jika beda = bukan
  final bool statusPalindrome = kataHurufKecil == kataKebalikan;

  // ✅ LANGKAH 5-6 TERPENUHI: Siapkan List vokal
  // 📋 const List = tidak bisa berubah (optimal untuk data tetap)
  // 🔉 Huruf vokal: a, i, u, e, o
  const List<String> daftarVokal = ['a', 'i', 'u', 'e', 'o'];

  // ✅ LANGKAH 5 TERPENUHI: Buat variabel counter
  // 🔢 int untuk menghitung jumlah vokal
  int jumlahVokal = 0;

  // ✅ LANGKAH 7 TERPENUHI: Perulangan mengecek setiap huruf
  // 🔁 for loop untuk setiap huruf dalam kata
  for (final String huruf in kataHurufKecil.split('')) {
    // ✅ Jika huruf ada di list vokal, increment counter
    // 🎯 contains() = method untuk cek keberadaan item dalam list
    if (daftarVokal.contains(huruf)) {
      jumlahVokal++;
    }
  }

  // ✅ LANGKAH 8 TERPENUHI: Run hasil analisis dengan jelas
  // 📊 Output format yang user-friendly
  print('Analisis Kata: "$kata"');
  print('- Status Palindrome: ${statusPalindrome ? 'IYA!' : 'TIDAK'}');
  print('- Jumlah Huruf Vokal: $jumlahVokal');
}
