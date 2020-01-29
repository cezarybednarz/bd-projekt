DROP TABLE Hashtag CASCADE CONSTRAINTS;
DROP TABLE Mention CASCADE CONSTRAINTS;
DROP TABLE Tweet CASCADE CONSTRAINTS;
DROP TABLE URL CASCADE CONSTRAINTS;
DROP TABLE Usr CASCADE CONSTRAINTS;


CREATE TABLE Hashtag (
    Tweet_id integer  NOT NULL,
    hashtag varchar2(256)  NOT NULL,
    id integer  NOT NULL,
    CONSTRAINT Hashtag_pk PRIMARY KEY (id)
) ;

CREATE TABLE Mention (
    Tweet_id integer  NOT NULL,
    User_id integer  NOT NULL,
    id integer  NOT NULL,
    CONSTRAINT Mention_pk PRIMARY KEY (id)
) ;

CREATE TABLE Tweet (
    id integer  NOT NULL,
    user_id integer  NOT NULL,
    text varchar2(256)  NOT NULL,
    favourite_count integer  NOT NULL,
    retweet_count integer  NOT NULL,
    query varchar2(256) NULL,
    CONSTRAINT Tweet_pk PRIMARY KEY (id)
) ;

CREATE TABLE URL (
    Tweet_id integer  NOT NULL,
    URL varchar2(256)  NOT NULL,
    id integer  NOT NULL,
    CONSTRAINT URL_pk PRIMARY KEY (id)
) ;

CREATE TABLE Usr (
    id integer  NOT NULL,
    name varchar2(256)  NOT NULL,
    screen_name varchar2(256)  NOT NULL,
    location varchar2(256)  NULL,
    description varchar2(256)  NULL,
    followers integer  NULL,
    friends integer  NULL,
    statuses_count integer  NULL,
    CONSTRAINT User_pk PRIMARY KEY (id)
) ;

ALTER TABLE Hashtag ADD CONSTRAINT Hashtag_Tweet
    FOREIGN KEY (Tweet_id)
    REFERENCES Tweet (id);

ALTER TABLE Mention ADD CONSTRAINT Mention_Tweet
    FOREIGN KEY (Tweet_id)
    REFERENCES Tweet (id);

ALTER TABLE Mention ADD CONSTRAINT Mention_User
    FOREIGN KEY (User_id)
    REFERENCES Usr (id);

ALTER TABLE Tweet ADD CONSTRAINT Tweet_User
    FOREIGN KEY (user_id)
    REFERENCES Usr (id);

ALTER TABLE URL ADD CONSTRAINT URL_Tweet
    FOREIGN KEY (Tweet_id)
    REFERENCES Tweet (id);
    
    
/*
------------- testowanie ----------------------
DROP TABLE test CASCADE CONSTRAINTS;
CREATE TABLE test (
    id integer NOT NULL ,
    val_a integer,
    val_b integer
) ;

INSERT INTO test (id, val_a, val_b) VALUES (1, 2, 3);
COMMIT WORK;
INSERT INTO test (id, val_a, val_b) VALUES (2, 2, 2);
COMMIT WORK;
INSERT INTO test (id, val_a, val_b) VALUES (3, 3, 3);
COMMIT WORK;
INSERT INTO test (id, val_a, val_b) VALUES (10, 10, 1000);
COMMIT WORK;


INSERT INTO usr (id, name, screen_name, location, description, followers, friends, statuses_count) VALUES  (1, 'Adam', 'adas', 'Warszawa', 'siema lubie costam', 3100, 24, 10101);
COMMIT WORK;

INSERT INTO usr (id, name, screen_name, location, description, followers, friends, statuses_count) VALUES  (1111, 'Kacper', 'kkkacper', 'Warszawa', 'EIII', 333300, 233334, 10333101);
COMMIT WORK;

INSERT INTO tweet (id, user_id, text, favourite_count, retweet_count, reply_count, query) VALUES (1, 1, 'hejka xD', 410, 787, 334, 'animals');
COMMIT WORK;

INSERT INTO tweet (id, user_id, text, favourite_count, retweet_count, reply_count, query) VALUES (2, 1111, 'elooooooooo elooooooo elooooo', 4, 7, 3, 'animals');
COMMIT WORK;

INSERT INTO hashtag (tweet_id, hashtag, id) VALUES (1, '#costam', 2);
COMMIT WORK;

INSERT INTO hashtag (tweet_id, hashtag, id) VALUES (1, '#noniewiem', 7);
COMMIT WORK;

INSERT INTO hashtag (tweet_id, hashtag, id) VALUES (2, '#costam', 3);
COMMIT WORK;

INSERT INTO url (tweet_id, url, id) VALUES (1, 'https://aaaaaaaaaaa.a', 1);
COMMIT WORK;

INSERT INTO url (tweet_id, url, id) VALUES (1, 'http://vvvvvaaa.a', 2);
COMMIT WORK;

------------ koniec testowania ----------------

*/


