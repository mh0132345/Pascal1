VAR i, n, j: INTEGER;
    l: ARRAY[1..100] OF INTEGER;
    w: ARRAY[1..100] OF STRING;
    s: STRING;
BEGIN
    write('nhap n');
     readln(n);
     FOR i:= 1 TO n DO
        BEGIN
            write('nhap l',i);
             read(l[i]);
             w[i]:= '';
        END;
     readln;
     write('nhap xau');
     readln(s);
     i:= 1;
     WHILE i <= length(s) DO
       BEGIN
            FOR j:= 1 TO n DO
               IF length(w[j]) = l[j] THEN continue
               ELSE BEGIN
                         w[j]:= w[j] + s[i];
                         inc(i);
                    END;
       END;
     FOR i:= 1 TO n DO write(w[i],' ');
     readln;
END.