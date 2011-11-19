program generate_english_lang_file;
uses lang;
var l: tLng;
    f: file;
begin
   with l do begin
      header := 'Test program';
      menu_about := 'About...';
      menu_help := 'Help';
      menu_quit := 'Quit';
      status_test := 'Choose one of available answers';
      status_text := 'Press any key to continue';
      status_menu := 'Choose any menu item using '+
                     'arrows and <Enter> key';
      results_right := 'Right: ';
      results_all := 'All: ';
      time_left := 'Time left:';
      sec := 'sec';
      file_not_found := 'Error reading file';
   end;
   assign(f, 'english.lng');
   rewrite(f, 1);
   blockwrite(f, l, sizeof(tLng));
   close(f);
end.