program kasus;
uses crt;
var
    angka: integer;
begin
    clrscr;
    writeln('Menu makanan');
    writeln('1. Nasi Goreng');
    writeln('2. Mie Goreng');
    writeln('3. Ayam Bakar');
    writeln('4. Sate');
    writeln('5. ayam semur');
    write('Masukkan sebuah angka: ');
    readln(angka);

    case angka of
        1: writeln('Anda memilih Nasi Goreng bayar 10.000');
        2: writeln('Anda memilih Mie Goreng bayar 8.000');
        3: writeln('Anda memilih Ayam Bakar bayar 12.000');
        4: writeln('Anda memilih Sate bayar 15.000');
        5: writeln('Anda memilih ayam semur bayar 13.000');
    else
        writeln('kode menu tidak sesuai');
    end;
end.
