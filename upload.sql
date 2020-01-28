CREATE OR REPLACE FUNCTION parse_json(char_json IN VARCHAR2) IS
  json JSON_OBJECT_T;
BEGIN
  json := JSON_OBJECT_T.parse(char_json);
  
