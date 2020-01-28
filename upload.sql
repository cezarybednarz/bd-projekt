


CREATE OR REPLACE FUNCTION parse_tweet(char_json IN VARCHAR2) IS
  json JSON_OBJECT_T;
  search_metadata JSON_OBJECT_T;
BEGIN
  json := JSON_OBJECT.parse(char_json);
  FOR tweet IN json.get_object('statuses')
  LOOP
    dbms_output.put_line(tweet.get_object('id_str').to_string);
  END LOOP;
END;
/
  
