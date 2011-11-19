
Unit MyCrypt;

interface

function encrypt(st: string): string;
function decrypt(st: string): string;

implementation

function encrypt(st: string): string;
var i: byte;
begin
   for i:=1 to length(st) do
      st[i]:=chr(not ord(st[i]));
   encrypt:=st;
end;

function decrypt(st: string): string;
var i: byte;
begin
   for i:=1 to length(st) do
      st[i]:=chr(not ord(st[i]));
   decrypt:=st;
end;

end.
