
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
        '{
  "statuses": [
    {
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
    },
    {
      "created_at": "Fri Dec 20 07:42:01 +0000 2019",
      "id": 1207929131444424700,
      "id_str": "1207929131444424704",
      "text": "RT @Parys_Furs: Dzień dobry:) #parysfurs #furlove #parysfurscollection #fur #furfashion #realfur #luxuryoutfit #realfurcoat #furcoat #furs…",
      "truncated": false,
      "entities": {
        "hashtags": [
          {
            "text": "parysfurs",
            "indices": [
              30,
              40
            ]
          },
          {
            "text": "furlove",
            "indices": [
              41,
              49
            ]
          },
          {
            "text": "parysfurscollection",
            "indices": [
              50,
              70
            ]
          },
          {
            "text": "fur",
            "indices": [
              71,
              75
            ]
          },
          {
            "text": "furfashion",
            "indices": [
              76,
              87
            ]
          },
          {
            "text": "realfur",
            "indices": [
              88,
              96
            ]
          },
          {
            "text": "luxuryoutfit",
            "indices": [
              97,
              110
            ]
          },
          {
            "text": "realfurcoat",
            "indices": [
              111,
              123
            ]
          },
          {
            "text": "furcoat",
            "indices": [
              124,
              132
            ]
          },
          {
            "text": "furs",
            "indices": [
              133,
              138
            ]
          }
        ],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "Parys_Furs",
            "name": "PARYS FURS",
            "id": 932521600523669500,
            "id_str": "932521600523669504",
            "indices": [
              3,
              14
            ]
          }
        ],
        "urls": []
      },
      "metadata": {
        "iso_language_code": "pl",
        "result_type": "recent"
      },
      "source": "<a href=\"http://drippinglolly.tumblr.com/fashionbot\" rel=\"nofollow\">Lily Scarlet</a>",
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 72847489,
        "id_str": "72847489",
        "name": "NokoNokoEcho",
        "screen_name": "sexygeeks0",
        "location": "World Wide Web",
        "description": "♡♡ LOVEFUR ♡♡",
        "url": "https://t.co/kHSLAKx0cN",
        "entities": {
          "url": {
            "urls": [
              {
                "url": "https://t.co/kHSLAKx0cN",
                "expanded_url": "http://laceyxlaney.tumblr.com/",
                "display_url": "laceyxlaney.tumblr.com",
                "indices": [
                  0,
                  23
                ]
              }
            ]
          },
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 572,
        "friends_count": 300,
        "listed_count": 18,
        "created_at": "Wed Sep 09 13:07:52 +0000 2009",
        "favourites_count": 2268,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 12440,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "FFFFFF",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme15/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme15/bg.png",
        "profile_background_tile": true,
        "profile_image_url": "http://pbs.twimg.com/profile_images/943807788245045248/BydHbhyF_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/943807788245045248/BydHbhyF_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/72847489/1513856238",
        "profile_link_color": "FF0066",
        "profile_sidebar_border_color": "FFFFFF",
        "profile_sidebar_fill_color": "FFFFFF",
        "profile_text_color": "333333",
        "profile_use_background_image": true,
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
      "retweeted_status": {
        "created_at": "Fri Dec 20 07:29:53 +0000 2019",
        "id": 1207926074723721200,
        "id_str": "1207926074723721217",
        "text": "Dzień dobry:) #parysfurs #furlove #parysfurscollection #fur #furfashion #realfur #luxuryoutfit #realfurcoat… https://t.co/nk8yb6ILnM",
        "truncated": true,
        "entities": {
          "hashtags": [
            {
              "text": "parysfurs",
              "indices": [
                14,
                24
              ]
            },
            {
              "text": "furlove",
              "indices": [
                25,
                33
              ]
            },
            {
              "text": "parysfurscollection",
              "indices": [
                34,
                54
              ]
            },
            {
              "text": "fur",
              "indices": [
                55,
                59
              ]
            },
            {
              "text": "furfashion",
              "indices": [
                60,
                71
              ]
            },
            {
              "text": "realfur",
              "indices": [
                72,
                80
              ]
            },
            {
              "text": "luxuryoutfit",
              "indices": [
                81,
                94
              ]
            },
            {
              "text": "realfurcoat",
              "indices": [
                95,
                107
              ]
            }
          ],
          "symbols": [],
          "user_mentions": [],
          "urls": [
            {
              "url": "https://t.co/nk8yb6ILnM",
              "expanded_url": "https://twitter.com/i/web/status/1207926074723721217",
              "display_url": "twitter.com/i/web/status/1…",
              "indices": [
                109,
                132
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
        "in_reply_to_user_id": null,
        "in_reply_to_user_id_str": null,
        "in_reply_to_screen_name": null,
        "user": {
          "id": 932521600523669500,
          "id_str": "932521600523669504",
          "name": "PARYS FURS",
          "screen_name": "Parys_Furs",
          "location": "",
          "description": "Jesteśmy firmą szyjącą i sprzedającą naturalne futra.",
          "url": null,
          "entities": {
            "description": {
              "urls": []
            }
          },
          "protected": false,
          "followers_count": 65,
          "friends_count": 65,
          "listed_count": 0,
          "created_at": "Mon Nov 20 08:10:49 +0000 2017",
          "favourites_count": 20,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": false,
          "verified": false,
          "statuses_count": 691,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "F5F8FA",
          "profile_background_image_url": null,
          "profile_background_image_url_https": null,
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/932522637242322945/rYJzHi1q_normal.jpg",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/932522637242322945/rYJzHi1q_normal.jpg",
          "profile_link_color": "1DA1F2",
          "profile_sidebar_border_color": "C0DEED",
          "profile_sidebar_fill_color": "DDEEF6",
          "profile_text_color": "333333",
          "profile_use_background_image": true,
          "has_extended_profile": false,
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
        "retweet_count": 1,
        "favorite_count": 1,
        "favorited": false,
        "retweeted": false,
        "possibly_sensitive": false,
        "lang": "pl"
      },
      "is_quote_status": false,
      "retweet_count": 1,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 07:35:24 +0000 2019",
      "id": 1207927466343440400,
      "id_str": "1207927466343440385",
      "text": "Krótka złota sukienka cekinowa z długim rękawem. Sukienka na wesele, sukienka na sylwestra, sukienka na imprezę,… https://t.co/BEAE82i9kH",
      "truncated": true,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [],
        "urls": [
          {
            "url": "https://t.co/BEAE82i9kH",
            "expanded_url": "https://twitter.com/i/web/status/1207927466343440385",
            "display_url": "twitter.com/i/web/status/1…",
            "indices": [
              114,
              137
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
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 262588476,
        "id_str": "262588476",
        "name": "Lejdi",
        "screen_name": "LejdiPl",
        "location": "Poland",
        "description": "https://t.co/CbOn6j934u",
        "url": "https://t.co/CbOn6j934u",
        "entities": {
          "url": {
            "urls": [
              {
                "url": "https://t.co/CbOn6j934u",
                "expanded_url": "http://www.lejdi.pl",
                "display_url": "lejdi.pl",
                "indices": [
                  0,
                  23
                ]
              }
            ]
          },
          "description": {
            "urls": [
              {
                "url": "https://t.co/CbOn6j934u",
                "expanded_url": "http://www.lejdi.pl",
                "display_url": "lejdi.pl",
                "indices": [
                  0,
                  23
                ]
              }
            ]
          }
        },
        "protected": false,
        "followers_count": 41,
        "friends_count": 10,
        "listed_count": 0,
        "created_at": "Tue Mar 08 10:21:15 +0000 2011",
        "favourites_count": 24,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 11006,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "EDECE9",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme3/bg.gif",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme3/bg.gif",
        "profile_background_tile": false,
        "profile_image_url": "http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png",
        "profile_image_url_https": "https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/262588476/1507885219",
        "profile_link_color": "088253",
        "profile_sidebar_border_color": "D3D2CF",
        "profile_sidebar_fill_color": "E3E2DE",
        "profile_text_color": "634047",
        "profile_use_background_image": true,
        "has_extended_profile": false,
        "default_profile": false,
        "default_profile_image": true,
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
      "possibly_sensitive": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 07:29:53 +0000 2019",
      "id": 1207926074723721200,
      "id_str": "1207926074723721217",
      "text": "Dzień dobry:) #parysfurs #furlove #parysfurscollection #fur #furfashion #realfur #luxuryoutfit #realfurcoat… https://t.co/nk8yb6ILnM",
      "truncated": true,
      "entities": {
        "hashtags": [
          {
            "text": "parysfurs",
            "indices": [
              14,
              24
            ]
          },
          {
            "text": "furlove",
            "indices": [
              25,
              33
            ]
          },
          {
            "text": "parysfurscollection",
            "indices": [
              34,
              54
            ]
          },
          {
            "text": "fur",
            "indices": [
              55,
              59
            ]
          },
          {
            "text": "furfashion",
            "indices": [
              60,
              71
            ]
          },
          {
            "text": "realfur",
            "indices": [
              72,
              80
            ]
          },
          {
            "text": "luxuryoutfit",
            "indices": [
              81,
              94
            ]
          },
          {
            "text": "realfurcoat",
            "indices": [
              95,
              107
            ]
          }
        ],
        "symbols": [],
        "user_mentions": [],
        "urls": [
          {
            "url": "https://t.co/nk8yb6ILnM",
            "expanded_url": "https://twitter.com/i/web/status/1207926074723721217",
            "display_url": "twitter.com/i/web/status/1…",
            "indices": [
              109,
              132
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
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 932521600523669500,
        "id_str": "932521600523669504",
        "name": "PARYS FURS",
        "screen_name": "Parys_Furs",
        "location": "",
        "description": "Jesteśmy firmą szyjącą i sprzedającą naturalne futra.",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 65,
        "friends_count": 65,
        "listed_count": 0,
        "created_at": "Mon Nov 20 08:10:49 +0000 2017",
        "favourites_count": 20,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 691,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "F5F8FA",
        "profile_background_image_url": null,
        "profile_background_image_url_https": null,
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/932522637242322945/rYJzHi1q_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/932522637242322945/rYJzHi1q_normal.jpg",
        "profile_link_color": "1DA1F2",
        "profile_sidebar_border_color": "C0DEED",
        "profile_sidebar_fill_color": "DDEEF6",
        "profile_text_color": "333333",
        "profile_use_background_image": true,
        "has_extended_profile": false,
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
      "retweet_count": 1,
      "favorite_count": 1,
      "favorited": false,
      "retweeted": false,
      "possibly_sensitive": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 07:05:15 +0000 2019",
      "id": 1207919877958357000,
      "id_str": "1207919877958356993",
      "text": "@PolskaKobieta @D_Tarczynski Być może Panie o których wspomniałaś z tego powodu malują ale niestety nie tylko ta gr… https://t.co/j5yJfa4t6l",
      "truncated": true,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "PolskaKobieta",
            "name": "JoLkA Z PoLsKi ✝️ Jeszcze Polska nie zginęła!🇵🇱✌",
            "id": 818748422866006000,
            "id_str": "818748422866006016",
            "indices": [
              0,
              14
            ]
          },
          {
            "screen_name": "D_Tarczynski",
            "name": "TARCZYŃSKI Dominik",
            "id": 347228796,
            "id_str": "347228796",
            "indices": [
              15,
              28
            ]
          }
        ],
        "urls": [
          {
            "url": "https://t.co/j5yJfa4t6l",
            "expanded_url": "https://twitter.com/i/web/status/1207919877958356993",
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
      "in_reply_to_status_id": 1207736424746946600,
      "in_reply_to_status_id_str": "1207736424746946560",
      "in_reply_to_user_id": 818748422866006000,
      "in_reply_to_user_id_str": "818748422866006016",
      "in_reply_to_screen_name": "PolskaKobieta",
      "user": {
        "id": 709378091278319600,
        "id_str": "709378091278319616",
        "name": "Pani Ivo",
        "screen_name": "Ivo642712",
        "location": "",
        "description": "Katol.Moher.Prawa strona.\nAlergia: lewactwo ❤️✝️🇵🇱💯♀️",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 2796,
        "friends_count": 4352,
        "listed_count": 23,
        "created_at": "Mon Mar 14 13:58:11 +0000 2016",
        "favourites_count": 108952,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 70403,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "F5F8FA",
        "profile_background_image_url": null,
        "profile_background_image_url_https": null,
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1060229337423724544/cYQa0yOV_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1060229337423724544/cYQa0yOV_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/709378091278319616/1541613954",
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
      "favorite_count": 1,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 05:40:43 +0000 2019",
      "id": 1207898603714465800,
      "id_str": "1207898603714465792",
      "text": "RT @Gabi_Aga_: Obejrzyjcie koniecznie jeśli lubicie taniec. Jeśli nie lubicie też obejrzyjcie. Na Sylwestra się przyda😁Chłopcy prezentują t…",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "Gabi_Aga_",
            "name": "Gabrysia",
            "id": 2584174872,
            "id_str": "2584174872",
            "indices": [
              3,
              13
            ]
          }
        ],
        "urls": []
      },
      "metadata": {
        "iso_language_code": "pl",
        "result_type": "recent"
      },
      "source": "<a href=\"https://mobile.twitter.com\" rel=\"nofollow\">Mobile Web (M2)</a>",
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 3864127937,
        "id_str": "3864127937",
        "name": "Włodzimierz Depta",
        "screen_name": "DeptaWlodek",
        "location": "Nowa Huta",
        "description": "Koniec komuny jest bliski. \"Nasi\" dogadali się z komuną. Sprzedali się za srebrniki. Myśleli, że komuchy będą ich szanować, a stali się ich wyrobnikami.",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 568,
        "friends_count": 33,
        "listed_count": 11,
        "created_at": "Sun Oct 04 18:44:43 +0000 2015",
        "favourites_count": 98874,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 49631,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "C0DEED",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1018556103104323587/-18qQcJF_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1018556103104323587/-18qQcJF_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/3864127937/1535270398",
        "profile_link_color": "0084B4",
        "profile_sidebar_border_color": "000000",
        "profile_sidebar_fill_color": "000000",
        "profile_text_color": "000000",
        "profile_use_background_image": true,
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
      "retweeted_status": {
        "created_at": "Thu Dec 19 16:58:33 +0000 2019",
        "id": 1207706798431621000,
        "id_str": "1207706798431621120",
        "text": "Obejrzyjcie koniecznie jeśli lubicie taniec. Jeśli nie lubicie też obejrzyjcie. Na Sylwestra się przyda😁Chłopcy pre… https://t.co/eDDpdaDrTk",
        "truncated": true,
        "entities": {
          "hashtags": [],
          "symbols": [],
          "user_mentions": [],
          "urls": [
            {
              "url": "https://t.co/eDDpdaDrTk",
              "expanded_url": "https://twitter.com/i/web/status/1207706798431621120",
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
        "in_reply_to_user_id": null,
        "in_reply_to_user_id_str": null,
        "in_reply_to_screen_name": null,
        "user": {
          "id": 2584174872,
          "id_str": "2584174872",
          "name": "Gabrysia",
          "screen_name": "Gabi_Aga_",
          "location": "Polska",
          "description": "...Ale zbaw mnie od nienawiści\nI ocal mnie od pogardy Panie...\n\n\nProśba: proszę o nieoznaczanie mnie w łańcuszkach. Thx :)",
          "url": null,
          "entities": {
            "description": {
              "urls": []
            }
          },
          "protected": false,
          "followers_count": 3270,
          "friends_count": 1285,
          "listed_count": 4,
          "created_at": "Mon Jun 23 15:34:21 +0000 2014",
          "favourites_count": 90363,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": false,
          "verified": false,
          "statuses_count": 40835,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "000000",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/1168217389646917634/1Ez5c1mL_normal.jpg",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/1168217389646917634/1Ez5c1mL_normal.jpg",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/2584174872/1572588036",
          "profile_link_color": "981CEB",
          "profile_sidebar_border_color": "000000",
          "profile_sidebar_fill_color": "000000",
          "profile_text_color": "000000",
          "profile_use_background_image": false,
          "has_extended_profile": true,
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
        "retweet_count": 3,
        "favorite_count": 26,
        "favorited": false,
        "retweeted": false,
        "possibly_sensitive": false,
        "lang": "pl"
      },
      "is_quote_status": false,
      "retweet_count": 3,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "possibly_sensitive": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 05:08:37 +0000 2019",
      "id": 1207890525321416700,
      "id_str": "1207890525321416705",
      "text": "@SylwiaSpurek Podatniczki? A kto to? Co to za moda #jprdl",
      "truncated": false,
      "entities": {
        "hashtags": [
          {
            "text": "jprdl",
            "indices": [
              51,
              57
            ]
          }
        ],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "SylwiaSpurek",
            "name": "Sylwia Spurek",
            "id": 4577469077,
            "id_str": "4577469077",
            "indices": [
              0,
              13
            ]
          }
        ],
        "urls": []
      },
      "metadata": {
        "iso_language_code": "pl",
        "result_type": "recent"
      },
      "source": "<a href=\"http://twitter.com/download/android\" rel=\"nofollow\">Twitter for Android</a>",
      "in_reply_to_status_id": 1207615041656283100,
      "in_reply_to_status_id_str": "1207615041656283136",
      "in_reply_to_user_id": 4577469077,
      "in_reply_to_user_id_str": "4577469077",
      "in_reply_to_screen_name": "SylwiaSpurek",
      "user": {
        "id": 1150022669489848300,
        "id_str": "1150022669489848320",
        "name": "Przemysław Grochala",
        "screen_name": "przemekgrochala",
        "location": "Jastrzębie-Zdrój, Polska",
        "description": "Mój punkt widzenia.",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 32,
        "friends_count": 24,
        "listed_count": 0,
        "created_at": "Sat Jul 13 12:42:25 +0000 2019",
        "favourites_count": 4309,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 1804,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "F5F8FA",
        "profile_background_image_url": null,
        "profile_background_image_url_https": null,
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1150022983135744001/DedoGdA2_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1150022983135744001/DedoGdA2_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/1150022669489848320/1563022486",
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
      "created_at": "Fri Dec 20 05:03:15 +0000 2019",
      "id": 1207889175468478500,
      "id_str": "1207889175468478464",
      "text": "TADASHI SHOJI one-piece dress nylon red sequins https://t.co/SAhfUGNRzX #fashiondesigner #onlineshopping #handmade… https://t.co/aj4LoZ6p8Z",
      "truncated": true,
      "entities": {
        "hashtags": [
          {
            "text": "fashiondesigner",
            "indices": [
              72,
              88
            ]
          },
          {
            "text": "onlineshopping",
            "indices": [
              89,
              104
            ]
          },
          {
            "text": "handmade",
            "indices": [
              105,
              114
            ]
          }
        ],
        "symbols": [],
        "user_mentions": [],
        "urls": [
          {
            "url": "https://t.co/SAhfUGNRzX",
            "expanded_url": "https://ift.tt/2PCUggC",
            "display_url": "ift.tt/2PCUggC",
            "indices": [
              48,
              71
            ]
          },
          {
            "url": "https://t.co/aj4LoZ6p8Z",
            "expanded_url": "https://twitter.com/i/web/status/1207889175468478464",
            "display_url": "twitter.com/i/web/status/1…",
            "indices": [
              116,
              139
            ]
          }
        ]
      },
      "metadata": {
        "iso_language_code": "pl",
        "result_type": "recent"
      },
      "source": "<a href=\"https://ifttt.com\" rel=\"nofollow\">IFTTT</a>",
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 1188429534380605400,
        "id_str": "1188429534380605441",
        "name": "fashiontrends",
        "screen_name": "ModetrendA",
        "location": "",
        "description": "",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 3,
        "friends_count": 0,
        "listed_count": 0,
        "created_at": "Sun Oct 27 12:17:44 +0000 2019",
        "favourites_count": 0,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 477,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "F5F8FA",
        "profile_background_image_url": null,
        "profile_background_image_url_https": null,
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1188430687046684672/kfr2Y3Kk_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1188430687046684672/kfr2Y3Kk_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/1188429534380605441/1572179204",
        "profile_link_color": "1DA1F2",
        "profile_sidebar_border_color": "C0DEED",
        "profile_sidebar_fill_color": "DDEEF6",
        "profile_text_color": "333333",
        "profile_use_background_image": true,
        "has_extended_profile": false,
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
      "possibly_sensitive": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 04:15:22 +0000 2019",
      "id": 1207877125941977000,
      "id_str": "1207877125941977088",
      "text": "RT @re_Natka08: @D_Tarczynski Jakaś chora moda na permanentne ordynarnie brwi, w usta botoks czy inny syf i wyglądają jak krzyżówka Kleopat…",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "re_Natka08",
            "name": "Pani Renatka 🚜🇵🇱👩‍👩‍👧‍👦✝",
            "id": 1204819732022599700,
            "id_str": "1204819732022599681",
            "indices": [
              3,
              14
            ]
          },
          {
            "screen_name": "D_Tarczynski",
            "name": "TARCZYŃSKI Dominik",
            "id": 347228796,
            "id_str": "347228796",
            "indices": [
              16,
              29
            ]
          }
        ],
        "urls": []
      },
      "metadata": {
        "iso_language_code": "pl",
        "result_type": "recent"
      },
      "source": "<a href=\"https://mobile.twitter.com\" rel=\"nofollow\">Twitter Web App</a>",
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 4276134747,
        "id_str": "4276134747",
        "name": "Krzysztof W",
        "screen_name": "krzyko64",
        "location": "",
        "description": "Potomek chłopa pańszczyźnianego z alergią na czerwoną zarazę ! Hebojcies sie ludziska kazdyn w swoi kolibie !",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 133,
        "friends_count": 86,
        "listed_count": 4,
        "created_at": "Wed Nov 25 16:29:14 +0000 2015",
        "favourites_count": 5616,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 9493,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "C0DEED",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1139571582303657985/mJkCtJ3v_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1139571582303657985/mJkCtJ3v_normal.jpg",
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
      "retweeted_status": {
        "created_at": "Thu Dec 19 20:56:42 +0000 2019",
        "id": 1207766729293783000,
        "id_str": "1207766729293783040",
        "text": "@D_Tarczynski Jakaś chora moda na permanentne ordynarnie brwi, w usta botoks czy inny syf i wyglądają jak krzyżówka… https://t.co/04rjBfDWCF",
        "truncated": true,
        "entities": {
          "hashtags": [],
          "symbols": [],
          "user_mentions": [
            {
              "screen_name": "D_Tarczynski",
              "name": "TARCZYŃSKI Dominik",
              "id": 347228796,
              "id_str": "347228796",
              "indices": [
                0,
                13
              ]
            }
          ],
          "urls": [
            {
              "url": "https://t.co/04rjBfDWCF",
              "expanded_url": "https://twitter.com/i/web/status/1207766729293783040",
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
        "source": "<a href=\"http://twitter.com\" rel=\"nofollow\">Twitter Web Client</a>",
        "in_reply_to_status_id": 1207734375309303800,
        "in_reply_to_status_id_str": "1207734375309303810",
        "in_reply_to_user_id": 347228796,
        "in_reply_to_user_id_str": "347228796",
        "in_reply_to_screen_name": "D_Tarczynski",
        "user": {
          "id": 1204819732022599700,
          "id_str": "1204819732022599681",
          "name": "Pani Renatka 🚜🇵🇱👩‍👩‍👧‍👦✝",
          "screen_name": "re_Natka08",
          "location": "Wielka Polska 🇵🇱✝",
          "description": "Ciemnogród",
          "url": null,
          "entities": {
            "description": {
              "urls": []
            }
          },
          "protected": false,
          "followers_count": 2818,
          "friends_count": 1717,
          "listed_count": 0,
          "created_at": "Wed Dec 11 17:46:42 +0000 2019",
          "favourites_count": 3178,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": false,
          "verified": false,
          "statuses_count": 475,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "000000",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/1205449648732868611/1GYqBUTa_normal.png",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/1205449648732868611/1GYqBUTa_normal.png",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/1204819732022599681/1576219591",
          "profile_link_color": "106F70",
          "profile_sidebar_border_color": "000000",
          "profile_sidebar_fill_color": "000000",
          "profile_text_color": "000000",
          "profile_use_background_image": false,
          "has_extended_profile": true,
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
        "retweet_count": 4,
        "favorite_count": 23,
        "favorited": false,
        "retweeted": false,
        "lang": "pl"
      },
      "is_quote_status": false,
      "retweet_count": 4,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 02:17:18 +0000 2019",
      "id": 1207847410946453500,
      "id_str": "1207847410946453506",
      "text": "@KonradPiasecki W dorosłość wchodzą kolejne roczniki nie pamiętające PRLu.\n\nSwoje zrobiła obecna od kilku lat \"moda… https://t.co/IMltdOiq3L",
      "truncated": true,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "KonradPiasecki",
            "name": "Konrad_Piasecki",
            "id": 69513730,
            "id_str": "69513730",
            "indices": [
              0,
              15
            ]
          }
        ],
        "urls": [
          {
            "url": "https://t.co/IMltdOiq3L",
            "expanded_url": "https://twitter.com/i/web/status/1207847410946453506",
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
      "source": "<a href=\"http://twitter.com\" rel=\"nofollow\">Twitter Web Client</a>",
      "in_reply_to_status_id": 1207296317921382400,
      "in_reply_to_status_id_str": "1207296317921382400",
      "in_reply_to_user_id": 69513730,
      "in_reply_to_user_id_str": "69513730",
      "in_reply_to_screen_name": "KonradPiasecki",
      "user": {
        "id": 1096891885854117900,
        "id_str": "1096891885854117893",
        "name": "Wróbel 🇵🇱",
        "screen_name": "glorifyday",
        "location": "Droga mleczna",
        "description": "Szary człowiek.\n\nPopieram wszystkie inicjatywy opozycyjne, w tym akcję #SilniRazem. Tylko wspólnie możemy wygrać z kombinatem nienawiści i pogardy.",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 881,
        "friends_count": 1218,
        "listed_count": 4,
        "created_at": "Sat Feb 16 21:59:39 +0000 2019",
        "favourites_count": 13297,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 19330,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "F5F8FA",
        "profile_background_image_url": null,
        "profile_background_image_url_https": null,
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1112200565772169216/H6I5EL13_normal.png",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1112200565772169216/H6I5EL13_normal.png",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/1096891885854117893/1571065779",
        "profile_link_color": "1DA1F2",
        "profile_sidebar_border_color": "C0DEED",
        "profile_sidebar_fill_color": "DDEEF6",
        "profile_text_color": "333333",
        "profile_use_background_image": true,
        "has_extended_profile": false,
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
      "created_at": "Fri Dec 20 01:01:38 +0000 2019",
      "id": 1207828370123296800,
      "id_str": "1207828370123296768",
      "text": "@pawelbae @LelenMat @FilipGorecki86 @SKacper21 @sport_tvppl @Adrian512Gd Ja dorzucę moda na Skokawce XD",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "pawelbae",
            "name": "Paweł Baran",
            "id": 4163239858,
            "id_str": "4163239858",
            "indices": [
              0,
              9
            ]
          },
          {
            "screen_name": "LelenMat",
            "name": "Mateusz Leleń",
            "id": 1229402792,
            "id_str": "1229402792",
            "indices": [
              10,
              19
            ]
          },
          {
            "screen_name": "FilipGorecki86",
            "name": "FilipG.",
            "id": 1124858305,
            "id_str": "1124858305",
            "indices": [
              20,
              35
            ]
          },
          {
            "screen_name": "SKacper21",
            "name": "Kacper Śliz",
            "id": 746639457898668000,
            "id_str": "746639457898668032",
            "indices": [
              36,
              46
            ]
          },
          {
            "screen_name": "sport_tvppl",
            "name": "TVP Sport",
            "id": 107377588,
            "id_str": "107377588",
            "indices": [
              47,
              59
            ]
          },
          {
            "screen_name": "Adrian512Gd",
            "name": "Adrian Dworakowski",
            "id": 995455101392257000,
            "id_str": "995455101392257026",
            "indices": [
              60,
              72
            ]
          }
        ],
        "urls": []
      },
      "metadata": {
        "iso_language_code": "pl",
        "result_type": "recent"
      },
      "source": "<a href=\"http://twitter.com/download/android\" rel=\"nofollow\">Twitter for Android</a>",
      "in_reply_to_status_id": 1207765887526297600,
      "in_reply_to_status_id_str": "1207765887526297601",
      "in_reply_to_user_id": 4163239858,
      "in_reply_to_user_id_str": "4163239858",
      "in_reply_to_screen_name": "pawelbae",
      "user": {
        "id": 835836753000951800,
        "id_str": "835836753000951808",
        "name": "Rafał Bugaj",
        "screen_name": "r_bugaj",
        "location": "Kraków",
        "description": "W szpitalu ktoś mnie musiał zarazić jakąś chorobą sportową, bo zainteresowanie sportem mam we krwi.\nGłównie #skijumpingfamily, czasem inne sporty zimowe",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 249,
        "friends_count": 140,
        "listed_count": 3,
        "created_at": "Sun Feb 26 12:59:45 +0000 2017",
        "favourites_count": 8081,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 972,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "000000",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/942386983313330176/rx0uyW-s_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/942386983313330176/rx0uyW-s_normal.jpg",
        "profile_link_color": "FC0000",
        "profile_sidebar_border_color": "000000",
        "profile_sidebar_fill_color": "000000",
        "profile_text_color": "000000",
        "profile_use_background_image": false,
        "has_extended_profile": true,
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
      "favorite_count": 3,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Thu Dec 19 23:34:08 +0000 2019",
      "id": 1207806349033255000,
      "id_str": "1207806349033254912",
      "text": "RT @re_Natka08: @D_Tarczynski Jakaś chora moda na permanentne ordynarnie brwi, w usta botoks czy inny syf i wyglądają jak krzyżówka Kleopat…",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "re_Natka08",
            "name": "Pani Renatka 🚜🇵🇱👩‍👩‍👧‍👦✝",
            "id": 1204819732022599700,
            "id_str": "1204819732022599681",
            "indices": [
              3,
              14
            ]
          },
          {
            "screen_name": "D_Tarczynski",
            "name": "TARCZYŃSKI Dominik",
            "id": 347228796,
            "id_str": "347228796",
            "indices": [
              16,
              29
            ]
          }
        ],
        "urls": []
      },
      "metadata": {
        "iso_language_code": "pl",
        "result_type": "recent"
      },
      "source": "<a href=\"https://mobile.twitter.com\" rel=\"nofollow\">Twitter Web App</a>",
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 2435348095,
        "id_str": "2435348095",
        "name": "Sylwia Gozdz",
        "screen_name": "SylwiaGozdz",
        "location": "",
        "description": "Kto szuka Mądrości, znajdzie ją łatwo.  PRAWO-UWr. Prawo Karne Materialne i Procesowe - UJ.   Doktor nauk prawnych.  Katolik. Konserwatysta. Karnista.",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 127,
        "friends_count": 178,
        "listed_count": 2,
        "created_at": "Wed Apr 09 11:53:53 +0000 2014",
        "favourites_count": 5297,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 5635,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "C0DEED",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1201152248094568448/EZy8LUWQ_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1201152248094568448/EZy8LUWQ_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/2435348095/1501189498",
        "profile_link_color": "1DA1F2",
        "profile_sidebar_border_color": "C0DEED",
        "profile_sidebar_fill_color": "DDEEF6",
        "profile_text_color": "333333",
        "profile_use_background_image": true,
        "has_extended_profile": false,
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
      "retweeted_status": {
        "created_at": "Thu Dec 19 20:56:42 +0000 2019",
        "id": 1207766729293783000,
        "id_str": "1207766729293783040",
        "text": "@D_Tarczynski Jakaś chora moda na permanentne ordynarnie brwi, w usta botoks czy inny syf i wyglądają jak krzyżówka… https://t.co/04rjBfDWCF",
        "truncated": true,
        "entities": {
          "hashtags": [],
          "symbols": [],
          "user_mentions": [
            {
              "screen_name": "D_Tarczynski",
              "name": "TARCZYŃSKI Dominik",
              "id": 347228796,
              "id_str": "347228796",
              "indices": [
                0,
                13
              ]
            }
          ],
          "urls": [
            {
              "url": "https://t.co/04rjBfDWCF",
              "expanded_url": "https://twitter.com/i/web/status/1207766729293783040",
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
        "source": "<a href=\"http://twitter.com\" rel=\"nofollow\">Twitter Web Client</a>",
        "in_reply_to_status_id": 1207734375309303800,
        "in_reply_to_status_id_str": "1207734375309303810",
        "in_reply_to_user_id": 347228796,
        "in_reply_to_user_id_str": "347228796",
        "in_reply_to_screen_name": "D_Tarczynski",
        "user": {
          "id": 1204819732022599700,
          "id_str": "1204819732022599681",
          "name": "Pani Renatka 🚜🇵🇱👩‍👩‍👧‍👦✝",
          "screen_name": "re_Natka08",
          "location": "Wielka Polska 🇵🇱✝",
          "description": "Ciemnogród",
          "url": null,
          "entities": {
            "description": {
              "urls": []
            }
          },
          "protected": false,
          "followers_count": 2818,
          "friends_count": 1717,
          "listed_count": 0,
          "created_at": "Wed Dec 11 17:46:42 +0000 2019",
          "favourites_count": 3178,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": false,
          "verified": false,
          "statuses_count": 475,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "000000",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/1205449648732868611/1GYqBUTa_normal.png",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/1205449648732868611/1GYqBUTa_normal.png",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/1204819732022599681/1576219591",
          "profile_link_color": "106F70",
          "profile_sidebar_border_color": "000000",
          "profile_sidebar_fill_color": "000000",
          "profile_text_color": "000000",
          "profile_use_background_image": false,
          "has_extended_profile": true,
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
        "retweet_count": 4,
        "favorite_count": 23,
        "favorited": false,
        "retweeted": false,
        "lang": "pl"
      },
      "is_quote_status": false,
      "retweet_count": 4,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Thu Dec 19 22:49:47 +0000 2019",
      "id": 1207795189714182100,
      "id_str": "1207795189714182144",
      "text": "Co to za moda nastała u was w kraju .. ( nie wiem kto to jest ? ) te ogolone łby 🤮.. co to ma być ten styl kretyńsk… https://t.co/TLZPKVTGp2",
      "truncated": true,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [],
        "urls": [
          {
            "url": "https://t.co/TLZPKVTGp2",
            "expanded_url": "https://twitter.com/i/web/status/1207795189714182144",
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
      "source": "<a href=\"http://twitter.com/download/iphone\" rel=\"nofollow\">Twitter for iPhone</a>",
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 1109663574861987800,
        "id_str": "1109663574861987840",
        "name": "magdziu@magdziu",
        "screen_name": "magdziumagdziu1",
        "location": "",
        "description": "",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 122,
        "friends_count": 145,
        "listed_count": 0,
        "created_at": "Sun Mar 24 03:49:47 +0000 2019",
        "favourites_count": 11765,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 4831,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "F5F8FA",
        "profile_background_image_url": null,
        "profile_background_image_url_https": null,
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1136810791515099136/AAcr5qOu_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1136810791515099136/AAcr5qOu_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/1109663574861987840/1553419345",
        "profile_link_color": "1DA1F2",
        "profile_sidebar_border_color": "C0DEED",
        "profile_sidebar_fill_color": "DDEEF6",
        "profile_text_color": "333333",
        "profile_use_background_image": true,
        "has_extended_profile": false,
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
      "favorite_count": 1,
      "favorited": false,
      "retweeted": false,
      "possibly_sensitive": false,
      "lang": "pl"
    },
    {
      "created_at": "Thu Dec 19 22:35:32 +0000 2019",
      "id": 1207791601155788800,
      "id_str": "1207791601155788800",
      "text": "Domowa moda rządzi się własnymi prawami ✌️ https://t.co/6OH30vTvi7",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [],
        "urls": [],
        "media": [
          {
            "id": 1207791581492908000,
            "id_str": "1207791581492908032",
            "indices": [
              43,
              66
            ],
            "media_url": "http://pbs.twimg.com/media/EMLwC1GXkAAw51J.jpg",
            "media_url_https": "https://pbs.twimg.com/media/EMLwC1GXkAAw51J.jpg",
            "url": "https://t.co/6OH30vTvi7",
            "display_url": "pic.twitter.com/6OH30vTvi7",
            "expanded_url": "https://twitter.com/xxcziczi/status/1207791601155788800/photo/1",
            "type": "photo",
            "sizes": {
              "thumb": {
                "w": 150,
                "h": 150,
                "resize": "crop"
              },
              "medium": {
                "w": 1200,
                "h": 1200,
                "resize": "fit"
              },
              "small": {
                "w": 680,
                "h": 680,
                "resize": "fit"
              },
              "large": {
                "w": 2048,
                "h": 2048,
                "resize": "fit"
              }
            }
          }
        ]
      },
      "extended_entities": {
        "media": [
          {
            "id": 1207791581492908000,
            "id_str": "1207791581492908032",
            "indices": [
              43,
              66
            ],
            "media_url": "http://pbs.twimg.com/media/EMLwC1GXkAAw51J.jpg",
            "media_url_https": "https://pbs.twimg.com/media/EMLwC1GXkAAw51J.jpg",
            "url": "https://t.co/6OH30vTvi7",
            "display_url": "pic.twitter.com/6OH30vTvi7",
            "expanded_url": "https://twitter.com/xxcziczi/status/1207791601155788800/photo/1",
            "type": "photo",
            "sizes": {
              "thumb": {
                "w": 150,
                "h": 150,
                "resize": "crop"
              },
              "medium": {
                "w": 1200,
                "h": 1200,
                "resize": "fit"
              },
              "small": {
                "w": 680,
                "h": 680,
                "resize": "fit"
              },
              "large": {
                "w": 2048,
                "h": 2048,
                "resize": "fit"
              }
            }
          }
        ]
      },
      "metadata": {
        "iso_language_code": "pl",
        "result_type": "recent"
      },
      "source": "<a href=\"http://twitter.com/download/android\" rel=\"nofollow\">Twitter for Android</a>",
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 935031746,
        "id_str": "935031746",
        "name": "Bożna 🌊~",
        "screen_name": "xxcziczi",
        "location": "부산",
        "description": "It’s not your job to be likable. It’s your job to be yourself. Someone will like you anyway.",
        "url": "https://t.co/fIWnDIvRnJ",
        "entities": {
          "url": {
            "urls": [
              {
                "url": "https://t.co/fIWnDIvRnJ",
                "expanded_url": "https://instagram.com/_dong_ii",
                "display_url": "instagram.com/_dong_ii",
                "indices": [
                  0,
                  23
                ]
              }
            ]
          },
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 530,
        "friends_count": 468,
        "listed_count": 9,
        "created_at": "Thu Nov 08 17:40:17 +0000 2012",
        "favourites_count": 14186,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 36546,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "FFECF5",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme18/bg.gif",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme18/bg.gif",
        "profile_background_tile": true,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1207535874415693824/PmdvzFld_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1207535874415693824/PmdvzFld_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/935031746/1538835160",
        "profile_link_color": "B40000",
        "profile_sidebar_border_color": "EEEEEE",
        "profile_sidebar_fill_color": "F6F6F6",
        "profile_text_color": "333333",
        "profile_use_background_image": true,
        "has_extended_profile": true,
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
      "favorite_count": 3,
      "favorited": false,
      "retweeted": false,
      "possibly_sensitive": false,
      "lang": "pl"
    }
  ],
  "search_metadata": {
    "completed_in": 0.056,
    "max_id": 1207931452303839200,
    "max_id_str": "1207931452303839237",
    "next_results": "?max_id=1207791601155788799&q=moda&lang=pl&include_entities=1",
    "query": "moda",
    "refresh_url": "?since_id=1207931452303839237&q=moda&lang=pl&include_entities=1",
    "count": 15,
    "since_id": 0,
    "since_id_str": "0"
  }
}
');




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
