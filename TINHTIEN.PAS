  PROGRAM tinhtien;
  USES crt;
  VAR X,A,s,t: REAL;
  BEGIN
    clrscr;
    Write('nhap A,s,t');
    Readln (A,s,t);
    X:= A + A * s / 100 * t;
    Write (' tong so tien la X= ',X:8:3);
    readln;
    END.