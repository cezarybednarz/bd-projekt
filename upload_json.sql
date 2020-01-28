
SET SERVEROUTPUT ON;

DROP TABLE json_documents PURGE;

CREATE TABLE json_documents (
  id    RAW(16) NOT NULL,    -- SYS_GUID()
  ts    TIMESTAMP NOT NULL,  -- systimestamp
  data  CLOB,
  CONSTRAINT json_documents_pk PRIMARY KEY (id),
  CONSTRAINT json_documents_json CHECK (data IS JSON (STRICT))
);



INSERT INTO json_documents (id, data)
VALUES (SYS_GUID(), systimestamp,
        ' {
      "created_at": "Fri Dec 20 07:51:15 +0000 2019",
      "id": 1207931452303839200,
      "id_str": "1207931452303839237",
      "text": "@OskarSierpinski @ManFromBarracks @PaxusLegatus @Tomasz45739197 Bany to się daje za chamstwo i inwektywy , nie za p… https://t.co/m6Fr8XvqOW",
      "truncated": true,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "OskarSierpinski",
            "name": "Oskar Sierpiński",
            "id": 1195358878822781000,
            "id_str": "1195358878822780934",
            "indices": [
              0,
              16
            ]
          },
          {
            "screen_name": "ManFromBarracks",
            "name": "PrawyBudzik🇵🇱⏰",
            "id": 1057611949410791400,
            "id_str": "1057611949410791426",
            "indices": [
              17,
              33
            ]
          },
          {
            "screen_name": "PaxusLegatus",
            "name": "Szkoda szczempić ryja",
            "id": 3413643831,
            "id_str": "3413643831",
            "indices": [
              34,
              47
            ]
          },
          {
            "screen_name": "Tomasz45739197",
            "name": "Tomasz (Tomi)",
            "id": 1129819835414843400,
            "id_str": "1129819835414843392",
            "indices": [
              48,
              63
            ]
          }
        ],
        "urls": [
          {
            "url": "https://t.co/m6Fr8XvqOW",
            "expanded_url": "https://twitter.com/i/web/status/1207931452303839237",
            "display_url": "twitter.com/i/web/status/1…",
            "indices": [
              117,
              140
            ]
          }
        ]
      },
      "metadata": {
        "iso_language_code": "pl",
        "result_type": "recent"
      },
      "source": "<a href=\"https://mobile.twitter.com\" rel=\"nofollow\">Twitter Web App</a>",
      "in_reply_to_status_id": 1207928280210391000,
      "in_reply_to_status_id_str": "1207928280210391041",
      "in_reply_to_user_id": 1195358878822781000,
      "in_reply_to_user_id_str": "1195358878822780934",
      "in_reply_to_screen_name": "OskarSierpinski",
      "user": {
        "id": 891151849759408100,
        "id_str": "891151849759408128",
        "name": "Piotr",
        "screen_name": "PiotrNo02045211",
        "location": "Legnica ",
        "description": "W świecie Twittera\nW iluzji zdarzeń \nCos tam napiszę\nTo polityka \nTo o kobiecie \nSerce na dłoni niose\nMoże ktoś  zechce \nMoże nie\nTak płynie dzień za dniem",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 4022,
        "friends_count": 3203,
        "listed_count": 10,
        "created_at": "Sat Jul 29 04:22:12 +0000 2017",
        "favourites_count": 141959,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 31778,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "F5F8FA",
        "profile_background_image_url": null,
        "profile_background_image_url_https": null,
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1200745767432073216/b_qpEkB6_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1200745767432073216/b_qpEkB6_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/891151849759408128/1574878788",
        "profile_link_color": "1DA1F2",
        "profile_sidebar_border_color": "C0DEED",
        "profile_sidebar_fill_color": "DDEEF6",
        "profile_text_color": "333333",
        "profile_use_background_image": true,
        "has_extended_profile": true,
        "default_profile": true,
        "default_profile_image": false,
        "following": false,
        "follow_request_sent": false,
        "notifications": false,
        "translator_type": "none"
      },
      "geo": null,
      "coordinates": null,
      "place": null,
      "contributors": null,
      "is_quote_status": false,
      "retweet_count": 0,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 07:44:47 +0000 2019",
      "id": 1207929825543020500,
      "id_str": "1207929825543020544",
      "text": "@KsFutsalLeszno  na pewno zakończy I rundę rozgrywek nad kreską. Porażka z Piastem Gliwice zbytnio nie popsuła nast… https://t.co/exguwWTQ8S",
      "truncated": true,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "KsFutsalLeszno",
            "name": "KS Futsal Leszno 🇵🇱1920💯",
            "id": 765213944332030000,
            "id_str": "765213944332029952",
            "indices": [
              0,
              15
            ]
          }
        ],
        "urls": [
          {
            "url": "https://t.co/exguwWTQ8S",
            "expanded_url": "https://twitter.com/i/web/status/1207929825543020544",
            "display_url": "twitter.com/i/web/status/1…",
            "indices": [
              117,
              140
            ]
          }
        ]
      },
      "metadata": {
        "iso_language_code": "pl",
        "result_type": "recent"
      },
      "source": "<a href=\"https://mobile.twitter.com\" rel=\"nofollow\">Twitter Web App</a>",
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": 765213944332030000,
      "in_reply_to_user_id_str": "765213944332029952",
      "in_reply_to_screen_name": "KsFutsalLeszno",
      "user": {
        "id": 2974650663,
        "id_str": "2974650663",
        "name": "Futsal Ekstraklasa",
        "screen_name": "FutsalEkstra",
        "location": "",
        "description": "",
        "url": "http://t.co/UUVrhCXnlD",
        "entities": {
          "url": {
            "urls": [
              {
                "url": "http://t.co/UUVrhCXnlD",
                "expanded_url": "http://www.futsalekstraklasa.pl",
                "display_url": "futsalekstraklasa.pl",
                "indices": [
                  0,
                  22
                ]
              }
            ]
          },
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 746,
        "friends_count": 52,
        "listed_count": 4,
        "created_at": "Mon Jan 12 13:26:51 +0000 2015",
        "favourites_count": 419,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 1168,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "000000",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1167894210218876928/NY6UcQKJ_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1167894210218876928/NY6UcQKJ_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/2974650663/1567282947",
        "profile_link_color": "0C2A4E",
        "profile_sidebar_border_color": "000000",
        "profile_sidebar_fill_color": "000000",
        "profile_text_color": "000000",
        "profile_use_background_image": false,
        "has_extended_profile": false,
        "default_profile": false,
        "default_profile_image": false,
        "following": false,
        "follow_request_sent": false,
        "notifications": false,
        "translator_type": "none"
      },
      "geo": null,
      "coordinates": null,
      "place": null,
      "contributors": null,
      "is_quote_status": false,
      "retweet_count": 0,
      "favorite_count": 1,
      "favorited": false,
      "retweeted": false,
      "possibly_sensitive": false,
      "lang": "pl"
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
