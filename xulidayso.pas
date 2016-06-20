PROGRAM day;
VAR  a:ARRAY [1..100] OF INTEGER;
i,n,dem,d,smax,tmax,tong,dan,d2:INTEGER;                   
PROCEDURE input;
BEGIN
    write('nhap so phan tu');
    readln(n);
    FOR i:=1 TO n DO
    BEGIN
        write('nhap phan tu thu',i);
        readln(a[i]);
    END;
END;
BEGIN 
    input;
    dem :=0; 
    a[n+1]:=-1;
    FOR i:=1 TO n+1 DO  
    IF A[i]>0 THEN inc(dem) 
    ELSE
               BEGIN
                      IF dem > smax THEN smax:=dem;
                      dem:=0;
               END;
        
        writeln('So hang duong lien tiep nhieu nhat la: ',smax);
        tmax:=0; tong:=0;
        FOR i:=1 TO n+1 DO
        BEGIN
            IF A[i]>0 THEN tong:=tong+A[i] 
            ELSE
               BEGIN
                      IF tong>tmax THEN tmax:=tong;
                      tong:=0;
               END;
        END; 
        writeln('Tong so hang duong lien tiep lon nhat la: ',tmax);
         d2:=0;
         dan:=0;
         FOR i:=1 TO n DO
         IF (a[i]*a[i-1]<0) AND (i>1) THEN
    BEGIN 
        IF d2=0 THEN d2:=2 
        ELSE d2:=d2+1;
    END
     ELSE 
    BEGIN
        IF dan<d2 THEN dan:=d2;
                d2:=0;
    END; 
    IF dan<d2 THEN dan:=d2;
    writeln('So so hang dan dau nhieu nhat la',dan);
        readln
      END.