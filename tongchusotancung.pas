    PROGRAM tinh;
  USES crt;
VAR n: LONGINT;
    m,tong,i: INTEGER;
BEGIN
   clrscr;
   write('Nhap n: '); readln(n);
   write('Nhap m: '); readln(m);
   FOR i:=1 TO m DO
     BEGIN
        tong:=tong+(n MOD 10);
        n:=n DIV 10;
     END;
   write('Tong ',m,' chu so cuoi cua so vua nhap = ',tong);
   readln;
END.