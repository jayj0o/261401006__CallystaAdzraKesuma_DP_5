program daftarTotalBelanja;
uses crt;
var i, n: integer;
    harga, totalBelanja, besarDiskon, totalBayar: real;
begin
    clrscr;
    write('Masukkan jumlah barang yang dibeli: '); readln(n);
    totalBelanja := 0;

    for i := 1 to n do
    begin
        write('Masukkan harga barang ke-', i, ': '); readln(harga);
        totalBelanja := totalBelanja + harga;
    end;

    if totalBelanja < 100000 then
        besarDiskon := totalBelanja * 0
    else if (totalBelanja >= 100000) and (totalBelanja < 500000) then
        besarDiskon := totalBelanja * 0.1
    else 
        besarDiskon := totalBelanja * 0.2;

    totalBayar := totalBelanja - besarDiskon;

    writeln;
    writeln('RINCIAN BELANJA:');
    writeln('Jumlah barang yang dibeli: ', n);
    writeln('Total sebelum diskon: Rp ', totalBelanja:0:2);
    writeln('Besar diskon: Rp ', besarDiskon:0:2);
    writeln;
    writeln('Total yang harus dibayar: Rp ', totalBayar:0:2);

    readln;
end.
