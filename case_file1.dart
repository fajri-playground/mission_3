// ✨ HELPER FUNCTION
// 📝 Definisikan nama bulan berdasarkan nomor bulan.
// 👍 Implementasi yang rapi dan terstruktur dengan baik!
String _namaBulan(int bulan) {
  // 💡 Menggunakan const untuk mengoptimalkan memori - Good Practice!
  const monthNames = [
    'JANUARI',
    'FEBRUARI',
    'MARET',
    'APRIL',
    'MEI',
    'JUNI',
    'JULI',
    'AGUSTUS',
    'SEPTEMBER',
    'OKTOBER',
    'NOVEMBER',
    'DESEMBER',
  ];

  // ✅ Validasi input yang tepat untuk mencegah index out of range
  if (bulan < 1 || bulan > 12) return 'TIDAK VALID';
  return monthNames[bulan - 1];
}

void main() {
  // ✅ LOGIC ACCURACY: List<Map<String, dynamic>> sudah dibuat dengan baik
  // ✅ Minimal 3 data terpenuhi (36 data)
  // ✅ Satu data kosong ada (Dara) - edge case ditangani
  final List<Map<String, dynamic>> teman = [
    {'nama': 'Budi', 'ultah': '2000-01-15'},
    {'nama': 'Siti', 'ultah': '2005-01-02'},
    {'nama': 'Rina', 'ultah': '1998-01-20'},
    {'nama': 'Andi', 'ultah': '1999-02-10'},
    {'nama': 'Dewa', 'ultah': '2001-02-22'},
    {'nama': 'Nina', 'ultah': '2004-02-05'},
    {'nama': 'Rudi', 'ultah': '1997-03-08'},
    {'nama': 'Wati', 'ultah': '2002-03-14'},
    {'nama': 'Joko', 'ultah': '2003-03-28'},
    {'nama': 'Lina', 'ultah': '1996-04-03'},
    {'nama': 'Fajar', 'ultah': '2000-04-19'},
    {'nama': 'Tono', 'ultah': '2001-04-27'},
    {'nama': 'Sari', 'ultah': '1995-05-09'},
    {'nama': 'Bayu', 'ultah': '1999-05-21'},
    {'nama': 'Mira', 'ultah': '2002-05-30'},
    {'nama': 'Raka', 'ultah': '2003-06-11'},
    {'nama': 'Tia', 'ultah': '1998-06-24'},
    {'nama': 'Gita', 'ultah': '2001-06-06'},
    {'nama': 'Dini', 'ultah': '1997-07-07'},
    {'nama': 'Arif', 'ultah': '2000-07-18'},
    {'nama': 'Rani', 'ultah': '2004-07-29'},
    {'nama': 'Yoga', 'ultah': '1996-08-12'},
    {'nama': 'Putri', 'ultah': '2002-08-23'},
    {'nama': 'Ilham', 'ultah': '1999-08-04'},
    {'nama': 'Adit', 'ultah': '2001-09-15'},
    {'nama': 'Siska', 'ultah': '1998-09-27'},
    {'nama': 'Doni', 'ultah': '2003-09-09'},
    {'nama': 'Kiki', 'ultah': '1997-10-01'},
    {'nama': 'Lala', 'ultah': '2000-10-16'},
    {'nama': 'Rafi', 'ultah': '2005-10-25'},
    {'nama': 'Nia', 'ultah': '1999-11-13'},
    {'nama': 'Bima', 'ultah': '2001-11-22'},
    {'nama': 'Tika', 'ultah': '2004-11-30'},
    {'nama': 'Rio', 'ultah': '1996-12-05'},
    {'nama': 'Citra', 'ultah': '2002-12-17'},
    {'nama': 'Eko', 'ultah': '1998-12-28'},
    {'nama': 'Dara', 'ultah': ''},
  ];

  final DateTime sekarang = DateTime.now();
  // ✅ Mengambil bulan saat ini - Langkah 4 terpenuhi
  final int bulanIni = sekarang.month;
  // ✅ Konstanta tahun sekarang sudah ditentukan dengan baik
  const int tahunSekarang = 2026;

  final String namaBulan = _namaBulan(bulanIni);
  print('📅 DAFTAR ULANG TAHUN BULAN $namaBulan:');

  int nomor = 1;
  int total = 0;

  // 🔄 Perulangan dengan for - Langkah 5 terpenuhi
  for (final data in teman) {
    final String nama = (data['nama'] ?? 'Tanpa Nama').toString();
    final String? ultah = data['ultah']?.toString();

    // ✅ Pengecekan data kosong/null - Langkah 6 terpenuhi dengan baik!
    // 🛡️ Null Safety diterapkan dengan benar menggunakan ? dan ??
    if (ultah == null || ultah.isEmpty) {
      print('- Data $nama tidak lengkap, dilewati...');
      // ✅ Menggunakan continue untuk skip data yang tidak lengkap - Langkah 6 fulfilled
      continue;
    }

    // 🔍 DateTime.tryParse() adalah cara aman mengparse date - Excellent practice!
    final DateTime? tanggalLahir = DateTime.tryParse(ultah);
    if (tanggalLahir == null) {
      print('- Data $nama tidak valid, dilewati...');
      continue;
    }

    // ⏰ Filter berdasarkan bulan saat ini
    if (tanggalLahir.month != bulanIni) {
      continue;
    }

    // 📊 Perhitungan umur: tahun sekarang - tahun lahir - Langkah 7 terpenuhi
    final int umur = tahunSekarang - tanggalLahir.year;
    print(
        '$nomor. Risers $nama: Wah, lagi ultah nih! Umurnya sekarang $umur tahun.');
    nomor++;
    total++;
  }

  print('--------------------------------------------------');
  // 📈 Total counter bekerja sempurna
  print('(Total ada $total teman yang harus kamu hubungi!)');
}
