{Buatlah program rekapitulasi nilai untuk M orang mahasiswa dengan N nilai tugas:
1. Minta input M (jumlah mahasiswa) dan N (jumlah tugas).
2. Gunakan 'nested loop' ('for-do' bersarang) untuk menginput nilai tugas tiap mahasiswa.
3. Hitung rata-rata nilai tiap mahasiswa dan tentukan kelulusan: Rata-rata >= 65 dinyatakan
"LULUS", selain itu "TIDAK LULUS".
4. Tampilkan rata-rata nilai tiap mahasiswa serta total mahasiswa LULUS dan TIDAK LULUS.}

program soal5;
uses crt;
var
    M, N: integer;
    i, j: integer;
    nilai: array of array of real; // array 2D untuk menyimpan nilai mahasiswa
    rataRata: real;
    totalLulus, totalTidakLulus: integer;

begin
clrscr;
    // user Input jumlah mahasiswa (M) dan jumlah tugas (N)
    write('Masukkan jumlah mahasiswa (M): ');
    readln(M);
    write('Masukkan jumlah tugas (N): ');
    readln(N);

    // Inisialisasi array 2D untuk menyimpan nilai
    SetLength(nilai, M, N);
    totalLulus := 0;
    totalTidakLulus := 0;

    // user Input nilai tugas tiap mahasiswa
    for i := 0 to M - 1 do
    begin
        writeln('Masukkan nilai untuk Mahasiswa ', i + 1, ':');
        for j := 0 to N - 1 do
        begin
            write('Nilai Tugas ', j + 1, ': ');
            readln(nilai[i][j]);
        end;
    end;

    // ngitung rata-rata dan metentukan kelulusan tiap mahasiswa
    writeln;
    for i := 0 to M - 1 do
    begin
        rataRata := 0;
        for j := 0 to N - 1 do
        begin
            rataRata := rataRata + nilai[i][j];
        end;
        rataRata := rataRata / N;

        writeln('Rata-rata Mahasiswa ', i + 1, ': ', rataRata:0:2);
        if rataRata >= 65 then
        begin
            writeln('Status: LULUS');
            totalLulus := totalLulus + 1;
        end
        else
        begin
            writeln('Status: TIDAK LULUS');
            totalTidakLulus := totalTidakLulus + 1;
        end;
        writeln;
    end;

    // Tampilkan total mahasiswa LULUS dan TIDAK LULUS
    writeln('Total Mahasiswa LULUS: ', totalLulus);
    writeln('Total Mahasiswa TIDAK LULUS: ', totalTidakLulus);

end.