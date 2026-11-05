program penjumlahan;
uses crt;

function tambah(a,b:integer):integer;
begin
    tambah := a + b;
    end;

var
c,d,hasil:integer;

begin
    clrscr;
    write('Masukkan angka pertama: ');
    readln(c);
    write('Masukkan angka kedua: ');
    readln(d);
    hasil := tambah(c,d);
    writeln('Hasil penjumlahan adalah: ', hasil);
    readln;
end.