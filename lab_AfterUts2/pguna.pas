program perkenalan;
uses crt;

procedure perkenalan(teks:string);
begin
  writeln('Halo!');
  writeln('Nama saya adalah ', teks, '!');
  writeln('Saya lagi belajar pascal');
end;

var
  nama: string;
begin
  clrscr;
  writeln('Masukkan nama Anda:');
  readln(nama);
  perkenalan(nama);
  readln;
end.