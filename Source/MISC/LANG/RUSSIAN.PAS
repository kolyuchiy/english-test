program generate_russian_lang_file;
uses lang;
var l: tLng;
    f: file;
begin
   with l do begin
      header := '�ணࠬ�� ��⮢';
      menu_about := '� �ணࠬ��';
      menu_help := '��ࠢ��';
      menu_quit := '��室';
      status_test := '�롥�� ���� �� ��ਠ�⮢ �⢥�';
      status_text := '������ ���� ������� ��� �த�������';
      status_menu := '�� ����� ����� �� �㭪� ���� � ������� '+
                    '��५�� � ������ <Enter>';
      results_right := '�ࠢ��쭮: ';
      results_all := '�ᥣ�: ';
      time_left := '��⠫���: ';
      sec := 'ᥪ';
      file_not_found := '�訡�� �⥭�� 䠩��';
   end;
   assign(f, 'russian.lng');
   rewrite(f, sizeof(tLng));
   blockwrite(f, l, 1);
   close(f);
end.