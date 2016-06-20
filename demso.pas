 PROGRAM demso;
 uses crt;
    VAR d: ARRAY [0..9] OF INTEGER;
  a: ARRAY [1..100] OF INTEGER;
  n, i: INTEGER;

BEGIN
 clrscr;
 write('Nhap so phan tu cua day so, N= ');
 readln(n);
 FOR i:=1 TO n DO
 BEGIN
  write('Phan tu thu ',i,' = ');
  readln(a[i]);
  d[a[i]]:=d[a[i]]+1;
 END;
 FOR i:=0 TO 9 DO
  IF d[i]<>0 THEN
   writeln('So lan xuat hien so ',i,': ',d[i]);
 readln;
END.