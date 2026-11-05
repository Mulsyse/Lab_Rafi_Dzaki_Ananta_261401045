program LuasPersegiPanjang;
uses crt;

var
  panjang, lebar, luas: integer;

begin
  clrscr;
  writeln('=== Program Menghitung Luas Persegi Panjang ===');
  
  // Meminta input dari pengguna
  write('Masukkan panjang: ');
  readln(panjang);
  
  write('Masukkan lebar: ');
  readln(lebar);
  
  // Menghitung luas
  luas := panjang * lebar;
  
  // Menampilkan hasil
  writeln('Luas persegi panjang adalah: ', luas);
  
  readln;
end.