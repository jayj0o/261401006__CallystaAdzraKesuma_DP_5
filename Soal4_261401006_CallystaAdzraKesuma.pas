program Kalkulator;
uses crt;
var
    pilihan: integer;
    angka1, angka2, hasil: real;
    bilangan1, bilangan2: integer;
    ulang: char;
begin
    clrscr;
    repeat
        writeln('=== KALKULATOR SEDERHANA ===');
        writeln('1. Penjumlahan');
        writeln('2. Pengurangan');
        writeln('3. Perkalian');
        writeln('4. Pembagian Real');
        writeln('5. DIV & MOD');
        writeln('============================');
        write('Pilih operasi (1-5): ');
        readln(pilihan);
        case pilihan of
            1:
            begin
                write('Masukkan angka pertama: ');
                readln(angka1);
                write('Masukkan angka kedua: ');
                readln(angka2);
                hasil := angka1 + angka2;
                writeln('Hasil = ', hasil:0:2);
            end;
            2:
            begin
                write('Masukkan angka pertama: ');
                readln(angka1);
                write('Masukkan angka kedua: ');
                readln(angka2);
                hasil := angka1 - angka2;
                writeln('Hasil = ', hasil:0:2);
            end;
            3:
            begin
                write('Masukkan angka pertama: ');
                readln(angka1);
                write('Masukkan angka kedua: ');
                readln(angka2);
                hasil := angka1 * angka2;
                writeln('Hasil = ', hasil:0:2);
            end;
            4:
            begin
                write('Masukkan angka pertama: ');
                readln(angka1);
                write('Masukkan angka kedua: ');
                readln(angka2);
                if angka2 = 0 then
                    writeln('Tidak dapat melakukan pembagian dengan 0.')
                else
                begin
                    hasil := angka1 / angka2;
                    writeln('Hasil = ', hasil:0:2);
                end;
            end;
            5:
            begin
                write('Masukkan bilangan pertama: ');
                readln(bilangan1);
                write('Masukkan bilangan kedua: ');
                readln(bilangan2);
                if bilangan2 = 0 then
                    writeln('Tidak dapat melakukan DIV dan MOD dengan 0.')
                else
                begin
                    writeln('Hasil DIV = ', bilangan1 div bilangan2);
                    writeln('Hasil MOD = ', bilangan1 mod bilangan2);
                end;
            end;
        else
            writeln('Pilihan tidak valid.');
        end;
        write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
        readln(ulang);
        writeln;
    until (ulang = 'T') or (ulang = 't');
    writeln('Program selesai.');
end.