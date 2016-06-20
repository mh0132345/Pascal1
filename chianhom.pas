PROGRAM johnny;
CONST finp='johnny.inp';
      fout='johnny.out';
TYPE
     theap = RECORD
                sz:INTEGER;
                hh:ARRAY[1..10000] OF INTEGER;
             END;
     pnode = ^tnode;
     tnode = RECORD
                v:INTEGER;
                next:pnode;
             END;
     llist = pnode;
VAR
    tree:ARRAY[1..10000] OF llist;
    a,b:ARRAY[1..10000] OF int64;
    z:ARRAY[1..10000] OF INTEGER;
    sum:ARRAY[0..1] OF int64;
    g:ARRAY[1..10000] OF SHORTINT;
    d:int64; n:INTEGER;  h:theap;
PROCEDURE llist_insert(VAR l:llist; v:INTEGER);
VAR p:pnode;
BEGIN
        new(p); p^.v:=v;
        p^.next:=l; l:=p;
END;
PROCEDURE heapify(VAR h:theap; i:INTEGER);
VAR l,r,j,t:INTEGER;
BEGIN
        WITH h DO
        BEGIN
           l:=i SHL 1; r:=i SHL 1 + 1;
           IF (l<=sz) AND (b[z[hh[l]]]>b[z[hh[i]]]) THEN
                   j:=l ELSE j:=i;
           IF (r<=sz) AND (b[z[hh[r]]]>b[z[hh[j]]]) THEN
                   j:=r;
           IF j<>i THEN
           BEGIN
                   t:=hh[i];
                   hh[i]:=hh[j];
                   hh[j]:=t;
                   heapify(h,j);
           END;
        END;
END;
PROCEDURE insert(VAR h:theap; k:INTEGER);
VAR i:INTEGER;
BEGIN
        WITH h DO
        BEGIN
                inc(sz);
                i:=sz;
                WHILE (i>1) AND (b[z[hh[i SHR 1]]] < b[z[k]]) DO
                BEGIN
                        hh[i]:=hh[i SHR 1];
                        i:=i SHR 1;
                END;
                hh[i]:=k;
        END;
END;
PROCEDURE extractmax(VAR h:theap; VAR k:INTEGER);
BEGIN
        WITH h DO
        BEGIN
                k:=hh[1];
                hh[1]:=hh[sz];
                dec(sz);
                heapify(h,1);
        END;
END;
PROCEDURE qsort(l,r:INTEGER);
VAR i,j:INTEGER;
    p,t:int64;
BEGIN
     i:=l; j:=r; p:=a[z[(l+r) DIV 2]];
     REPEAT
           WHILE a[z[i]]<p DO inc(i);
           WHILE p<a[z[j]] DO dec(j);
           IF i<=j THEN
           BEGIN
                t:=z[i];
                z[i]:=z[j];
                z[j]:=t;
                inc(i);
                dec(j);
           END;
     UNTIL i>j;
     IF l<j THEN qsort(l,j);
     IF i<r THEN qsort(i,r);
END;
FUNCTION str264(s:STRING):int64;
VAR code:INTEGER;
BEGIN
        val(s,str264,code);
END;
PROCEDURE nhap;
VAR i:INTEGER;
    s:STRING;
BEGIN
     readln(n);
     FOR i:=1 TO n DO
     BEGIN
         readln(s);
         a[i]:=str264(s);
         z[i]:=i;
     END;
END;
PROCEDURE chianhom;
VAR i,k1,k2:INTEGER;
BEGIN
     b:=a;
     FOR i:=n DOWNTO 1 DO
        insert(h,i);
     FOR i:=1 TO n-1 DO
     BEGIN
        extractmax(h,k1);
        extractmax(h,k2);
        llist_insert(tree[k1],k2);
        llist_insert(tree[k2],k1);
        b[z[k1]]:=b[z[k1]]-b[z[k2]];
        insert(h,k1);
     END;
END;
PROCEDURE tomau;
VAR q:ARRAY[1..10000] OF INTEGER;
    x,y:INTEGER;
    i, top: INTEGER;
    p: pnode;
BEGIN
     FOR i:=1 TO n DO g[i]:=-1;
     fillchar(sum,sizeof(sum),0);
     x:=1;  y:=1;
     q[1]:=1;  g[1]:=0;
     sum[0]:=a[z[1]];
     WHILE x<=y DO
     BEGIN
        top:=q[x];
        p:=tree[top];
        inc(x);
        WHILE p<>NIL DO
        BEGIN
                IF g[p^.v]=-1 THEN
                BEGIN
                   inc(y);
                   q[y]:=p^.v;
                   g[p^.v]:=1-g[top];
                   inc(sum[g[p^.v]],a[z[p^.v]]);
                END;
                p:=p^.next;
        END;
     END;
END;
PROCEDURE xuly;
BEGIN
        qsort(1, n);
        chianhom;   tomau;
END;
PROCEDURE inkq;
VAR i:INTEGER;
BEGIN
     FOR i:=1 TO n DO
         IF g[i]=0 THEN
            writeln(z[i]);
END;
BEGIN
     assign(input, finp);
     reset(input);
     assign(output, fout);
     rewrite(output);
     nhap;  xuly;   inkq;
     close(input);
     close(output);
END.