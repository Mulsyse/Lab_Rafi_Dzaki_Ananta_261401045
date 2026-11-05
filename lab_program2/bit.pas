program bit;
uses crt;

var
    a,b: integer;

begin;
    clrscr;

    a := 5;
    b := 6;

    writeln('a And b :',a and b);
    writeln('a And b :',a or b);
    writeln('a And b :',a xor b);
    writeln('not b :',not a);
    writeln('shl b :',a shl b);
    writeln('shr b :',a shr b);

end.