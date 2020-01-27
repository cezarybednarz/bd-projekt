ALTER TABLE Hashtag DROP CONSTRAINT Hashtag_Tweet;
ALTER TABLE Mention DROP CONSTRAINT Mention_Tweet;
ALTER TABLE Mention DROP CONSTRAINT Mention_User;
ALTER TABLE Tweet DROP CONSTRAINT Tweet_User;
ALTER TABLE URL DROP CONSTRAINT URL_Tweet;
DROP TABLE Hashtag CASCADE;
DROP TABLE Mention CASCADE;
DROP TABLE Tweet CASCADE;
DROP TABLE URL CASCADE;
DROP TABLE Usr CASCADE;

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
    in_reply_to_status_id integer  NULL,
    retweeted number(1)  NOT NULL,
    favourite_count integer  NOT NULL,
    retweet_count integer  NOT NULL,
    reply_count integer  NOT NULL,
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
    descritption varchar2(256)  NULL,
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
