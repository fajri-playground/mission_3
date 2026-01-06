// UTILITY FUNCTION
String _formatRupiah(double value) {
  return value.toStringAsFixed(1);
}

// CLASS DEFINITION
class BankAccount {
  final String namaPemilik;
  double saldo;

  BankAccount({required this.namaPemilik, required this.saldo});

  void setor(double jumlah) {
    if (jumlah <= 0) {
      print('⚠️ Gagal! Jumlah setor harus lebih dari 0.');
      return;
    }

    saldo += jumlah;
    print('Setor tunai: Rp ${_formatRupiah(jumlah)} -> Sukses!');
    print('Saldo sekarang: Rp ${_formatRupiah(saldo)}');
  }

  void tarik(double jumlah) {
    if (jumlah <= 0) {
      print('⚠️ Gagal! Jumlah tarik harus lebih dari 0.');
      return;
    }

    if (jumlah > saldo) {
      final double kurang = jumlah - saldo;
      print('⚠️ Gagal! Saldo tidak cukup. Kurang: Rp ${_formatRupiah(kurang)}');
      return;
    }

    saldo -= jumlah;
    print('Sukses! Saldo tersisa: Rp ${_formatRupiah(saldo)}');
  }
}

void main() {
  final BankAccount akun = BankAccount(namaPemilik: 'MR STARK', saldo: 1000000.0);

  print('💰 Halo ${akun.namaPemilik}!');
  print('Saldo awal: Rp ${_formatRupiah(akun.saldo)}');

  akun.setor(500000.0);
  akun.tarik(2000000.0);
}
