{Buatlah sistem verifikasi kata sandi (login) menggunakan 'repeat-until' dan peloncatan 'break':
1. Program menyimpan kata sandi rahasia secara internal (misal: 'pascal123').
2. Pengguna diberi kesempatan maksimal 3 kali untuk memasukkan kata sandi yang benar.
3. Jika kata sandi benar, tampilkan "Login Berhasil! Selamat Datang" dan hentikan loop
menggunakan 'break'.
4. Jika pengguna gagal 3 kali, tampilkan "Akses Ditolak! Akun Terkunci."}

program soal2;
uses crt;
var
    kataSandi: string;
    percobaan: integer;
    kataSandiRahasia: string;

begin
clrscr;
    kataSandiRahasia := 'pascal123'; // kata sandi rahasia yang disimpan secara internal
    percobaan := 0;

    repeat
        write('Masukkan kata sandi: ');
        readln(kataSandi);
        percobaan := percobaan + 1;

        // sistem ngecek apakah kata sandi yang dimasukkan user sesuai dengan kata sandi rahasia
        if kataSandi = kataSandiRahasia then
        begin
            writeln('Login Berhasil! Selamat Datang.');
            break; // hentikan loop jika kata sandi benar
        end
        else
        begin
            writeln('Kata sandi salah. Silakan coba lagi.');
        end;

        if percobaan >= 3 then
        begin
            writeln('Akses Ditolak! Akun Terkunci.');
        end;  
    until percobaan >= 3; // batas maksimal percobaan adalah 3 kali



end.