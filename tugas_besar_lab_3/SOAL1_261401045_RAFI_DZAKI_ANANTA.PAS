{Sebuah toko buku ingin menampilkan daftar total belanjaan secara otomatis untuk pembelian N
barang:
1. Minta pengguna memasukkan N (jumlah barang yang dibeli).
2. Gunakan perulangan 'for-to-do' untuk menginput harga barang ke-1 hingga ke-N.
3. Hitung Total Belanja, lalu tentukan diskon dengan ketentuan if-else:
- Total < Rp100.000: Diskon 0%
- Rp100.000 <= Total < Rp500.000: Diskon 10%
- Total >= Rp500.000: Diskon 20%
4. Tampilkan Rincian Belanja, Total Sebelum Diskon, Besar Diskon, dan Total Bayar Akhir!}

program soal1;
uses crt;
var
    N, i: integer;
    hargaBarang, totalBelanja, diskon, totalBayar: real;

begin
clrscr;
    // user diminta untuk memasukkan jumlah barang yang dibeli
    write('Masukkan jumlah barang yang dibeli (N): ');
    readln(N);

    totalBelanja := 0;

    // perulangan untuk menginput harga tiap barang
    for i := 1 to N do
    begin
        write('Masukkan harga barang ke-', i, ': Rp');
        readln(hargaBarang);
        totalBelanja := totalBelanja + hargaBarang; // menghitung total belanja
    end;

    // menentukan besar diskon berdasarkan total belanja
    if totalBelanja < 100000 then
        diskon := 0
    else if (totalBelanja >= 100000) and (totalBelanja < 500000) then
        diskon := totalBelanja * 0.10 // diskon 10%
    else
        diskon := totalBelanja * 0.20; // diskon 20%

    totalBayar := totalBelanja - diskon; // menghitung total bayar akhir

    // menampilkan rincian belanja dan perhitungan akhir
    writeln;
    writeln('Rincian Belanja:');
    writeln('Total Sebelum Diskon: Rp', totalBelanja:0:2);
    writeln('Besar Diskon: Rp', diskon:0:2);
    writeln('Total Bayar Akhir: Rp', totalBayar:0:2);
end.