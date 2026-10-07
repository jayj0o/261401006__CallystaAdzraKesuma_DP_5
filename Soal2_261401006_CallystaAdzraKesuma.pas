program verifikasiKataSandi;
uses crt;
const sandiRahasia = 'dupaktingtingj0s';
var katasandi: string;
    kesempatan: integer;
    loginSucceed: boolean;
begin
    clrscr;
    kesempatan := 0;
    loginSucceed := false;
    writeln('=== VERIFIKASI KATA SANDI ===');
    writeln;
    repeat
        kesempatan := kesempatan + 1;
        write('Masukkan kata sandi: '); 
        readln(katasandi);
        if katasandi = sandiRahasia then
        begin
            loginSucceed := true;
            writeln('Login berhasil! Selamat datang.');
            break;
        end
        else
        begin
            writeln('Kata sandi salah. Silakan coba lagi.');
            writeln('Kesempatan tersisa: ', 3 - kesempatan);
            writeln;
        end;
    until kesempatan = 3;
    if not loginSucceed then
        begin
            writeln('Akses ditolak! Akun terkunci.')
        end;
end.