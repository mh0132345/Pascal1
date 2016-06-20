VAR a:ARRAY [1..1000] OF BOOLEAN;
i,j,n,k:INTEGER;
done:BOOLEAN;
BEGIN
    write('nhap n');
    readln(n);
    fillchar(a,sizeof(a),TRUE);
    FOR i:=2 TO n DO
    BEGIN
        IF NOT a[i] THEN continue;
        k:=0;
        done:=TRUE;
        FOR j:=1 TO n DO
        BEGIN
            IF a[j] THEN inc(k);
            IF k MOD i=0 THEN 
            BEGIN
                a[j]:=FALSE;
                done:=FALSE;
            END;
        END;
        IF done THEN break;
    END;
    
        FOR i:=1 TO n DO
        IF a[i] THEN write(i,' ');
        readln;
        END.
            
    
    