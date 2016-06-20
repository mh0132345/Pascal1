PROGRAM Analyses;
VAR
  n: INTEGER;
  x: ARRAY[0..100] OF INTEGER;
  t: ARRAY[0..100] OF INTEGER;
  Count: LONGINT;

PROCEDURE Init;
BEGIN
  Write('n = '); Readln(n);
  x[0] := 1;
  t[0] := 0;
  Count := 0;
END;

PROCEDURE PrintResult(k: INTEGER);
VAR
  i: INTEGER;
BEGIN
  Inc(Count);
  Write(Count:10, '. ', n,' = ');
  FOR i := 1 TO k - 1 DO Write(x[i], '+');
  Writeln(x[k]);
END;

PROCEDURE Try(i: INTEGER);
VAR
  j: INTEGER;
BEGIN
  FOR j := x[i - 1] TO (n - t[i - 1]) DIV 2 DO 	{Tru?ng h?p còn ch?n ti?p xi+1}
    BEGIN
      x[i] := j;
      t[i] := t[i - 1] + j;
      Try(i + 1);
    END;
  x[i] := n - t[i - 1]; 		{N?u xi là ph?n t? cu?i thì nó b?t bu?c ph?i là ... và in k?t qu?}
  PrintResult(i);
END;

BEGIN
  Init;
  Try(1); 
  readln
END.