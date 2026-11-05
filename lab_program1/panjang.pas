program persegipanjang;

var
  panjang, lebar, luas: integer;

begin

  write('Masukkan bilangan 1 : ');
  readln(panjang);

  write('Masukkan bilangan 2 : ');
  readln(lebar);



  luas := panjang * lebar;


  writeln('Panjang    : ', panjang);
  writeln('Lebar      : ', lebar);
  writeln('Luas       : ', luas);

  readln;
end.