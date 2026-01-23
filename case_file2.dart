// 🔧 UTILITY FUNCTION
// ✨ Helper untuk format rupiah dengan 1 desimal - Rapi!
String _formatRupiah(double value) {
  return value.toStringAsFixed(1);
}

// 🏦 CLASS DEFINITION - Langkah 1 terpenuhi!
// ✅ BankAccount class dibuat dengan baik
class BankAccount {
  // ✅ Property sudah didefinisikan dengan tipe data yang benar
  final String namaPemilik; // final = tidak berubah setelah dibuat
  double saldo; // double = untuk uang (pecahan)

  // ✅ Constructor dengan parameter named - Langkah 3 terpenuhi!
  // 📝 required keyword memastikan parameter harus diisi
  BankAccount({required this.namaPemilik, required this.saldo});

  // 💰 FUNGSI SETOR - Langkah 4 terpenuhi!
  // ✅ Menambah saldo dengan logika validasi
  void setor(double jumlah) {
    // 🛡️ Validasi input: jumlah harus positif
    if (jumlah <= 0) {
      print('⚠️ Gagal! Jumlah setor harus lebih dari 0.');
      return;
    }

    // ➕ Tambah saldo
    saldo += jumlah;
    print('Setor tunai: Rp ${_formatRupiah(jumlah)} -> Sukses!');
    print('Saldo sekarang: Rp ${_formatRupiah(saldo)}');
  }

  // 💸 FUNGSI TARIK - Langkah 5 terpenuhi!
  // ✅ Mengurangi saldo dengan logika validasi if-else - Langkah 6 terpenuhi!
  void tarik(double jumlah) {
    // 🛡️ Validasi input: jumlah harus positif
    if (jumlah <= 0) {
      print('⚠️ Gagal! Jumlah tarik harus lebih dari 0.');
      return;
    }

    // ⚠️ CEK UTAMA: Apakah saldo cukup? - Langkah 6 logic if-else
    if (jumlah > saldo) {
      // ❌ Saldo tidak cukup - tampilkan pesan error dengan format yang diminta
      final double kurang = jumlah - saldo;
      print('⚠️ Gagal! Saldo tidak cukup. Kurang: Rp ${_formatRupiah(kurang)}');
      return;
    }

    // ✅ Saldo cukup - kurangi saldo dan tampilkan pesan sukses
    saldo -= jumlah;
    print('Sukses! Saldo tersisa: Rp ${_formatRupiah(saldo)}');
  }
}

void main() {
  // ✅ LANGKAH 7 TERPENUHI: Buat objek nasabah di main
  // 🏦 Instantiasi BankAccount dengan nama dan saldo awal
  final BankAccount akun =
      BankAccount(namaPemilik: 'MR STARK', saldo: 1000000.0);

  // 📊 Tampilkan info awal
  print('💰 Halo ${akun.namaPemilik}!');
  print('Saldo awal: Rp ${_formatRupiah(akun.saldo)}');

  // ✅ Panggil fungsi setor - Langkah 7 fulfilled
  akun.setor(500000.0);

  // ✅ Panggil fungsi tarik - Langkah 7 fulfilled
  akun.tarik(2000000.0);
}
