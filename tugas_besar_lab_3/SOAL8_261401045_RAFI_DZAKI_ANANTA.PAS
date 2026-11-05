{Hitung gaji karyawan berdasarkan Golongan ('A'=Rp1.500.000, 'B'=Rp2.000.000,
'C'=Rp2.500.000):
1. Jam kerja standar = 40 jam/minggu. Kelebihan jam dihitung lembur Rp20.000/jam.
2. Khusus Golongan 'C', jika total jam kerja > 50 jam, berikan bonus tambahan Rp100.000.
Tampilkan rincian Gaji Pokok, Lembur, Bonus, dan Total Gaji Akhir.}

program soal8;
uses crt;
var
    golongan: char;
    jamKerja: integer;
    gajiPokok, lembur, bonus, totalGaji: real;

begin
clrscr;
    // ni bagian untuk user masukin golongan sama  jam kerja
    write('Masukkan Golongan Karyawan (A/B/C): ');
    readln(golongan);
    write('Masukkan Total Jam Kerja (jam): ');
    readln(jamKerja);

    // case yang ini untuk nentuin golongan ... gajinya ....
    case upcase(golongan) of
        'A': gajiPokok := 1500000;
        'B': gajiPokok := 2000000;
        'C': gajiPokok := 2500000;
        else begin
            writeln('Golongan tidak valid.');
            exit; // Keluar dari program jika golongan tidak valid
        end;
    end;

    // kondisi semisal jam kerja lebih dari 40 jam,dapat uang lembur
    if jamKerja > 40 then
        lembur := (jamKerja - 40) * 20000
    else
        lembur := 0;

    // kondisi vvip untuk pekerja dari golongan C semisal jam kerja > 50 jam
    if (upcase(golongan) = 'C') and (jamKerja > 50) then
        bonus := 100000
    else
        bonus := 0;

    // total gaji bersih
    totalGaji := gajiPokok + lembur + bonus;

    // nampilin rincian uang yang didapat karyawan dari mana aja
    writeln;
    writeln('Rincian Gaji Karyawan:');
    writeln('Golongan: ', upcase(golongan));
    writeln('Gaji Pokok: Rp', gajiPokok:0:2);
    writeln('Lembur: Rp', lembur:0:2);
    writeln('Bonus: Rp', bonus:0:2);
    writeln('Total Gaji Akhir: Rp', totalGaji:0:2);
end.