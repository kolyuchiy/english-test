{$I-}

Unit monobmp;

interface

procedure showbmp(fname: string);

implementation

uses graph;

type
   BITMAPFILEHEADER = record
      bfType: word;
      bfSize: longint;
      bfReserved1: word;
      bfReserved2: word;
      bgOffbits: longint;
   end;
   BITMAPINFOHEADER = record
      biSize: longint;
      biWidth: longint;
      biHeight: longint;
      biPlanes: word;
      biBitCount: word;
      biCompression: longint;
      biSizeImage: longint;
      biXPelsPerMeter: longint;
      biYPelPerMeter: longint;
      biClrUsed: longint;
      biClrImportant: longint;
   end;
   RGBQUAD = record
      rgbRed: byte;
      rgbGreen: byte;
      rgbBlue: byte;
      rgbRserved: byte;
   end;
   BITMAPINFO = record
      bmiHeader: BITMAPINFOHEADER;
      bmiColors: array[1..1] of RGBQUAD;
   end;
   tdata = array[0..65534] of byte;

procedure showbmp(fname: string);
var f: file;
    header: BITMAPFILEHEADER;
    info: BITMAPINFO;
    data: ^tdata;
    pix: longint;
    x,y,i,j: word;
begin
   assign(f,fname);
   reset(f,1);
   if IOResult<>0 then exit;
   blockread(f,header,sizeof(BITMAPFILEHEADER));
   blockread(f,info,sizeof(BITMAPINFO));
   seek(f,header.bgOffbits);
   with info.bmiHeader do biSizeImage:=biWidth * biHeight div 8;
   getmem(data,info.bmiHeader.biSizeImage);
   blockread(f,data^,info.bmiHeader.biSizeImage);
   x:=0; y:=info.bmiHeader.biHeight;
   j:=0;
   while not ((x=0) and (y=0)) do begin
      pix:=data^[j]; inc(j);
      for i:=1 to 8 do begin
         if lo(pix) shr 7 <> 0 then putpixel(x,y,DarkGray);
         pix:=pix shl 1;
         inc(x);
         if x>=info.bmiHeader.biWidth then begin
            x:=0; dec(y);
            break;
         end;
      end;
   end;
   freemem(data,info.bmiHeader.biSizeImage);
   close(f);
end;

end.