program latihan;
uses crt;

var
    nama: string;
    uang_awal : integer;
    harga_makanan : integer;
    harga_minuman : integer;
    total_pengeluaran: integer;
    sisa_uang:integer;

begin;
    clrscr;
    writeln('nama');
    read(nama);
    writeln('uang awal');
    read(uang_awal);
    writeln('harga_makanan');
    read(harga_makanan);
    writeln('harga_minuman');
    read(harga_minuman);

    total_pengeluaran := harga_makanan + harga_minuman;
    sisa_uang := uang_awal - total_pengeluaran;
    
    writeln('sisa uang', sisa_uang);


end.