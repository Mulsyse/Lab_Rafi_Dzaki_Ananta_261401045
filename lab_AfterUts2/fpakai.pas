program lauaslingkaran;
uses crt;

function luaslingkaran(jari:real):real;
begin
  luaslingkaran := 3.14 * jari * jari;
end;

begin
    clrscr;
    writeln('Luas lingkaran dengan jari-jari 7 adalah: ', luaslingkaran(7):0:2);
    luaslingkaran := luaslingkaran(7);
    readln;
end.