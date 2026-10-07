program DeretAngkaFilter;
uses crt;
var
    n, pilihan, i: integer;
begin
    clrscr;
    write('Masukkan nilai N: ');
    readln(n);
    writeln('Pilih kategori deret:');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Masukkan pilihan (1/2): ');
    readln(pilihan);
    writeln;
    writeln('Hasil deret angka:');
    
    i := 1;
    while i <= n do
    begin
        if ((pilihan = 1) and (i mod 2 = 0)) or 
            ((pilihan = 2) and (i mod 2 <> 0)) or 
            (i mod 5 = 0) then
        begin
            i := i + 1;
            continue;
        end;
        write(i, ' ');
        i := i + 1;
    end;
    writeln;
    readln;
end.