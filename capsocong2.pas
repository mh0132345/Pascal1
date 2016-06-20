VAR a, f, fi: ARRAY[1..1000] OF INTEGER;
    n, max, min: INTEGER;
    res, resd, resf: INTEGER;
PROCEDURE init;
  VAR i: INTEGER;
  BEGIN 
    write('nhap n');
       readln(n);
       min:= 32676;
       max:= 0;
       FOR i:= 1 TO n DO
          BEGIN
            write('nhap pha tu thu ',i);
               readln(a[i]);
            IF a[i] > max THEN max:= a[i];
               IF a[i] < min THEN min:= a[i];
          END;
       readln;
  END;
PROCEDURE solve;
  VAR d, i, tmp, j, tf: INTEGER;
  BEGIN
       res:= 1;
       resf:= a[1];
       FOR d:= 1 TO max - min DO
          BEGIN
               f[1]:= 1;
               fi[1]:= a[1];
               FOR i:= 2 TO n DO
                  BEGIN
                       tmp:= 0;
                       tf:= a[i];
                       FOR j:= i - 1 DOWNTO 1 DO
                          IF (a[i] - a[j] = d) AND (f[j] > tmp) THEN
                            BEGIN
                                 tmp:= f[j];
                                 tf:= fi[j];
                            END;
                       f[i]:= tmp + 1;
                       fi[i]:= tf;
                       IF f[i] > res THEN
                         BEGIN
                              res:= f[i];
                              resf:= tf;
                              resd:= d;
                         END;
                  END;
          END;
  END;
PROCEDURE printres;
  VAR i: INTEGER;
  BEGIN
       writeln(res);
       FOR i:= 1 TO res DO
          write(resf + resd*(i - 1),' ');
  END;
BEGIN
     init;
     solve;
     printres;
END.