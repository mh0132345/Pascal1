 PROGRAM ngto;
 CONST max=100;
 VAR a:ARRAY[1..max] OF INTEGER;
 i,d,n,k,dem:INTEGER;
  FUNCTION kt(n:LONGINT):BOOLEAN;
  BEGIN
    if n<2 then kt:=false;
    d:=0;
   for i:=2 to round(sqrt(n)) do
    IF n MOD i=0 THEN inc(d);
  IF d>0 THEN kt:=TRUE;
  END;
  BEGIN
    write('nhap n');readln(n);
    write('nhap k');readln(k);
    FOR i:=1 TO n DO
    BEGIN
        write('phan tu thu',i);
        readln(a[i]);
       END;
       dem:=0;
       for i:=1 to n do
        IF (a[i]<k) AND (kt(a[i]))THEN dem:=dem+1;
        writeln(dem);
        readln
    END.


