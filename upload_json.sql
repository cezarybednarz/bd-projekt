
SET SERVEROUTPUT ON;

DROP TABLE json_documents PURGE;

CREATE TABLE json_documents (
  id    RAW(16) NOT NULL,    -- SYS_GUID()
  ts    TIMESTAMP NOT NULL,  -- systimestamp
  data  CLOB,
  CONSTRAINT json_documents_pk PRIMARY KEY (id),
  CONSTRAINT json_documents_json CHECK (data IS JSON (STRICT))
);



INSERT INTO json_documents (id, ts, data)
VALUES (SYS_GUID(), systimestamp,
        ' {
      "created_at": "Fri Dec 20 07:51:15 +0000 2019",
      "id": 1207931452303839200,
      }');




/*
CREATE OR REPLACE PROCEDURE json_insert(my_id IN RAW)
AS
  row json_documents%ROWTYPE;
  json CLOB;
BEGIN
  SELECT * INTO row FROM json_documents WHERE json_documents.id = my_id;
  SELECT json_documents.data INTO json FROM json_documents WHERE json_documents.id = my_id;
  
  INSERT INTO usr (id, name, screen_name, location, description, followers, friends, statuses_count) 
  
  VALUES  (json.statuses.
COMMIT WORK;
  
END json_insert;
/
*/
