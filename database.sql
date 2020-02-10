DROP TABLE Hashtag CASCADE CONSTRAINTS;
DROP TABLE Mention CASCADE CONSTRAINTS;
DROP TABLE Tweet CASCADE CONSTRAINTS;
DROP TABLE URL CASCADE CONSTRAINTS;
DROP TABLE Usr CASCADE CONSTRAINTS;

CREATE TABLE Hashtag (
    Tweet_id integer  NOT NULL,
    hashtag varchar2(256)  NOT NULL
) ;

CREATE TABLE Mention (
    Tweet_id integer  NOT NULL,
    User_id integer  NOT NULL
) ;

CREATE TABLE Tweet (
    id integer  NOT NULL,
    user_id integer  NOT NULL,
    text varchar2(256)  NOT NULL,
    favourite_count integer  NOT NULL,
    retweet_count integer  NOT NULL,
    query varchar2(256) NULL,
    created_at date NULL,             -- nowe
    from_file varchar2(256) NULL, -- nowe
    CONSTRAINT Tweet_pk PRIMARY KEY (id)
) ;

CREATE TABLE URL (
    Tweet_id integer  NOT NULL,
    URL varchar2(256)  NOT NULL
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

ALTER TABLE Tweet ADD CONSTRAINT Tweet_User
    FOREIGN KEY (user_id)
    REFERENCES Usr (id);

ALTER TABLE URL ADD CONSTRAINT URL_Tweet
    FOREIGN KEY (Tweet_id)
    REFERENCES Tweet (id);


