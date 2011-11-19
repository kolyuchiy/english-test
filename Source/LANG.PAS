
Unit Lang;

interface

type tLng = record
              header,
              menu_about,
              menu_help,
              menu_quit,
              status_test,
              status_text,
              status_menu,
              results_right,
              results_all,
              time_left,
              sec,
              file_not_found: string;
           end;

procedure lng_read(var l: tLng);

implementation

uses dos;

procedure lng_read(var l: tLng);
var f: file;
const lngfname = 'project.lng';
begin
   assign(f, lngfname);
   reset(f, sizeof(tLng));
   blockread(f, l, 1);
   close(f);
end;

end.
