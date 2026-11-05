program tes1;

uses crt;

var
  nama, kelas: string;
  umur, bilangan1, bilangan2: integer;

begin
  clrscr;

  write('Masukkan nama   : ');
  readln(nama);

  write('Masukkan umur   : ');
  readln(umur);

  write('Masukkan kelas   : ');
  readln(kelas);

  write('Masukkan bilangan 1: ');
  readln(bilangan1);

  write('Masukkan bilangan 2: ');
  readln(bilangan2);

  writeln;;
  writeln('Nama      : ', nama);
  writeln('Umur      : ', umur);
  writeln('Kelas     : ', kelas);
  writeln('Bilangan 1: ', bilangan1);
  writeln('Bilangan 2: ', bilangan2);

  readln;
end.
