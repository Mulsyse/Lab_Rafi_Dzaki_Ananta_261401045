{Tentukan jumlah hari dalam suatu bulan pada tahun tertentu:
1. Minta input tahun dan nomor bulan (1-12).
2. Cek Tahun Kabisat (habis dibagi 400 ATAU habis dibagi 4 tetapi tidak habis dibagi 100
menggunakan operator mod).
3. Tentukan jumlah hari: Bulan 1,3,5,7,8,10,12 = 31 hari; Bulan 4,6,9,11 = 30 hari; Bulan 2 = 29
hari (Kabisat) / 28 hari (Bukan Kabisat).}

program soal9;
uses crt;
var
    tahun, bulan, jumlahHari: integer;
    isKabisat: boolean;

begin
clrscr;
    // user masukin Input tahun ama bulan
    write('Masukkan Tahun: ');
    readln(tahun);
    write('Masukkan Nomor Bulan (1-12): ');
    readln(bulan);

    // system ngecek apakah tahun kabisat ato bukan (soal kemarin ini kak -_-)
    isKabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

    // sistem nentuin jumlah hari berdasarkan bulan ama kabisat
    case bulan of
        1, 3, 5, 7, 8, 10, 12: jumlahHari := 31;
        4, 6, 9, 11: jumlahHari := 30;
        2: if isKabisat then
                jumlahHari := 29
            else
                jumlahHari := 28;
        else begin
            writeln('Nomor bulan tidak valid.');
            exit; // program ngestop jika nomor bulan tidak valid
        end;
    end;

    // nampilin hasil
    writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' adalah: ', jumlahHari);
end.