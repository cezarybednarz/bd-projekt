
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
      "created_at": "Fri Dec 20 08:58:42 +0000 2019",
      "id": 1207948427755176000,
      "id_str": "1207948427755175936",
      "text": "RT @RMnaTT: #Wspominki\n20 grudnia 2018 roku - ostatni - jak dotąd - mecz oficjalny między Zagłębiem Sosnowiec a Legią Warszawa. \n\nWśród str…",
      "truncated": false,
      "entities": {
        "hashtags": [
          {
            "text": "Wspominki",
            "indices": [
              12,
              22
            ]
          }
        ],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "RMnaTT",
            "name": "Rafał Majchrzak",
            "id": 731208917901033500,
            "id_str": "731208917901033472",
            "indices": [
              3,
              10
            ]
          }
        ],
        "urls": []
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
        "id": 3482937200,
        "id_str": "3482937200",
        "name": "Footroll",
        "screen_name": "FootrollPL",
        "location": "Warszawa, Mazowieckie",
        "description": "Najlepsze trollowanie piłki w Polsce. Zachęcamy do zaglądania także na kanał na YouTube: https://t.co/A57WKKqknF",
        "url": "https://t.co/Mw5nOq11sy",
        "entities": {
          "url": {
            "urls": [
              {
                "url": "https://t.co/Mw5nOq11sy",
                "expanded_url": "https://footroll.pl/",
                "display_url": "footroll.pl",
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
                "url": "https://t.co/A57WKKqknF",
                "expanded_url": "https://www.youtube.com/channel/UCxmalaHMEL83ixpIwWfRZjg",
                "display_url": "youtube.com/channel/UCxmal…",
                "indices": [
                  89,
                  112
                ]
              }
            ]
          }
        },
        "protected": false,
        "followers_count": 7515,
        "friends_count": 155,
        "listed_count": 6,
        "created_at": "Mon Sep 07 15:07:55 +0000 2015",
        "favourites_count": 9216,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 10924,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "000000",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1195389089677283329/coBtCKBw_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1195389089677283329/coBtCKBw_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/3482937200/1573837944",
        "profile_link_color": "4A913C",
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
      "retweeted_status": {
        "created_at": "Fri Dec 20 08:46:59 +0000 2019",
        "id": 1207945480908476400,
        "id_str": "1207945480908476416",
        "text": "#Wspominki\n20 grudnia 2018 roku - ostatni - jak dotąd - mecz oficjalny między Zagłębiem Sosnowiec a Legią Warszawa.… https://t.co/iBkRJdxwzo",
        "truncated": true,
        "entities": {
          "hashtags": [
            {
              "text": "Wspominki",
              "indices": [
                0,
                10
              ]
            }
          ],
          "symbols": [],
          "user_mentions": [],
          "urls": [
            {
              "url": "https://t.co/iBkRJdxwzo",
              "expanded_url": "https://twitter.com/i/web/status/1207945480908476416",
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
          "id": 731208917901033500,
          "id_str": "731208917901033472",
          "name": "Rafał Majchrzak",
          "screen_name": "RMnaTT",
          "location": "",
          "description": "",
          "url": "https://t.co/768A8hPSTQ",
          "entities": {
            "url": {
              "urls": [
                {
                  "url": "https://t.co/768A8hPSTQ",
                  "expanded_url": "http://facebook.com/rafa.majchrzak",
                  "display_url": "facebook.com/rafa.majchrzak",
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
          "followers_count": 2330,
          "friends_count": 853,
          "listed_count": 3,
          "created_at": "Fri May 13 19:46:06 +0000 2016",
          "favourites_count": 59825,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": false,
          "verified": false,
          "statuses_count": 12936,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "000000",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/1156184275915628545/NaWZNOtV_normal.jpg",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/1156184275915628545/NaWZNOtV_normal.jpg",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/731208917901033472/1559380874",
          "profile_link_color": "19CF86",
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
        "is_quote_status": true,
        "quoted_status_id": 1075867115423494100,
        "quoted_status_id_str": "1075867115423494144",
        "quoted_status": {
          "created_at": "Thu Dec 20 21:34:43 +0000 2018",
          "id": 1075867115423494100,
          "id_str": "1075867115423494144",
          "text": "Rollercoaster w Sosnowcu! 🎢 #ZSOLEG #LegiaWalczącaDoKońca https://t.co/cLdDRNU6H8",
          "truncated": false,
          "entities": {
            "hashtags": [
              {
                "text": "ZSOLEG",
                "indices": [
                  28,
                  35
                ]
              },
              {
                "text": "LegiaWalczącaDoKońca",
                "indices": [
                  36,
                  57
                ]
              }
            ],
            "symbols": [],
            "user_mentions": [],
            "urls": [],
            "media": [
              {
                "id": 1075866889925132300,
                "id_str": "1075866889925132288",
                "indices": [
                  58,
                  81
                ],
                "media_url": "http://pbs.twimg.com/media/Du4_PHeXgAAu-JU.jpg",
                "media_url_https": "https://pbs.twimg.com/media/Du4_PHeXgAAu-JU.jpg",
                "url": "https://t.co/cLdDRNU6H8",
                "display_url": "pic.twitter.com/cLdDRNU6H8",
                "expanded_url": "https://twitter.com/LegiaWarszawa/status/1075867115423494144/photo/1",
                "type": "photo",
                "sizes": {
                  "thumb": {
                    "w": 150,
                    "h": 150,
                    "resize": "crop"
                  },
                  "medium": {
                    "w": 960,
                    "h": 540,
                    "resize": "fit"
                  },
                  "small": {
                    "w": 680,
                    "h": 383,
                    "resize": "fit"
                  },
                  "large": {
                    "w": 960,
                    "h": 540,
                    "resize": "fit"
                  }
                }
              }
            ]
          },
          "extended_entities": {
            "media": [
              {
                "id": 1075866889925132300,
                "id_str": "1075866889925132288",
                "indices": [
                  58,
                  81
                ],
                "media_url": "http://pbs.twimg.com/media/Du4_PHeXgAAu-JU.jpg",
                "media_url_https": "https://pbs.twimg.com/media/Du4_PHeXgAAu-JU.jpg",
                "url": "https://t.co/cLdDRNU6H8",
                "display_url": "pic.twitter.com/cLdDRNU6H8",
                "expanded_url": "https://twitter.com/LegiaWarszawa/status/1075867115423494144/photo/1",
                "type": "photo",
                "sizes": {
                  "thumb": {
                    "w": 150,
                    "h": 150,
                    "resize": "crop"
                  },
                  "medium": {
                    "w": 960,
                    "h": 540,
                    "resize": "fit"
                  },
                  "small": {
                    "w": 680,
                    "h": 383,
                    "resize": "fit"
                  },
                  "large": {
                    "w": 960,
                    "h": 540,
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
          "source": "<a href=\"http://twitter.com\" rel=\"nofollow\">Twitter Web Client</a>",
          "in_reply_to_status_id": null,
          "in_reply_to_status_id_str": null,
          "in_reply_to_user_id": null,
          "in_reply_to_user_id_str": null,
          "in_reply_to_screen_name": null,
          "user": {
            "id": 55007258,
            "id_str": "55007258",
            "name": "Legia Warszawa",
            "screen_name": "LegiaWarszawa",
            "location": "Polska - Warszawa",
            "description": "Oficjalne konto najlepszego klubu piłkarskiego w Polsce.",
            "url": "https://t.co/pFfsfdgLMh",
            "entities": {
              "url": {
                "urls": [
                  {
                    "url": "https://t.co/pFfsfdgLMh",
                    "expanded_url": "http://www.legia.com",
                    "display_url": "legia.com",
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
            "followers_count": 298626,
            "friends_count": 169,
            "listed_count": 374,
            "created_at": "Wed Jul 08 19:52:06 +0000 2009",
            "favourites_count": 12451,
            "utc_offset": null,
            "time_zone": null,
            "geo_enabled": true,
            "verified": true,
            "statuses_count": 53389,
            "lang": null,
            "contributors_enabled": false,
            "is_translator": false,
            "is_translation_enabled": false,
            "profile_background_color": "131516",
            "profile_background_image_url": "http://abs.twimg.com/images/themes/theme14/bg.gif",
            "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme14/bg.gif",
            "profile_background_tile": false,
            "profile_image_url": "http://pbs.twimg.com/profile_images/1192732451631697921/dOYnVaRs_normal.jpg",
            "profile_image_url_https": "https://pbs.twimg.com/profile_images/1192732451631697921/dOYnVaRs_normal.jpg",
            "profile_banner_url": "https://pbs.twimg.com/profile_banners/55007258/1572096864",
            "profile_link_color": "008332",
            "profile_sidebar_border_color": "FFFFFF",
            "profile_sidebar_fill_color": "EFEFEF",
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
          "is_quote_status": false,
          "retweet_count": 22,
          "favorite_count": 188,
          "favorited": false,
          "retweeted": false,
          "possibly_sensitive": false,
          "lang": "pl"
        },
        "retweet_count": 1,
        "favorite_count": 1,
        "favorited": false,
        "retweeted": false,
        "possibly_sensitive": false,
        "lang": "pl"
      },
      "is_quote_status": true,
      "quoted_status_id": 1075867115423494100,
      "quoted_status_id_str": "1075867115423494144",
      "retweet_count": 1,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 08:56:11 +0000 2019",
      "id": 1207947796499832800,
      "id_str": "1207947796499832832",
      "text": "RT @JanArtymowski: Doświadczeni lekarze odeszli, ale 'prolajferzy' mogą się cieszyć. Oddział prof. Dębskiego rok po jego śmierci https://t.…",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "JanArtymowski",
            "name": "jan artymowski",
            "id": 140622656,
            "id_str": "140622656",
            "indices": [
              3,
              17
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
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 2468889991,
        "id_str": "2468889991",
        "name": "dobson",
        "screen_name": "dobson733",
        "location": "",
        "description": "",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 623,
        "friends_count": 987,
        "listed_count": 100,
        "created_at": "Tue Apr 29 07:02:38 +0000 2014",
        "favourites_count": 24493,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 247227,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "000000",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/861164009336307712/WbTy5341_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/861164009336307712/WbTy5341_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/2468889991/1428230159",
        "profile_link_color": "3B94D9",
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
      "retweeted_status": {
        "created_at": "Fri Dec 20 08:13:06 +0000 2019",
        "id": 1207936951321596000,
        "id_str": "1207936951321595904",
        "text": "Doświadczeni lekarze odeszli, ale 'prolajferzy' mogą się cieszyć. Oddział prof. Dębskiego rok po jego śmierci https://t.co/qMNmPnmzsS",
        "truncated": false,
        "entities": {
          "hashtags": [],
          "symbols": [],
          "user_mentions": [],
          "urls": [
            {
              "url": "https://t.co/qMNmPnmzsS",
              "expanded_url": "https://warszawa.wyborcza.pl/warszawa/7,54420,25522163.html",
              "display_url": "warszawa.wyborcza.pl/warszawa/7,544…",
              "indices": [
                110,
                133
              ]
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
          "id": 140622656,
          "id_str": "140622656",
          "name": "jan artymowski",
          "screen_name": "JanArtymowski",
          "location": "Poland",
          "description": "Sekretarz Generalny Stronnictwa Demokratycznego",
          "url": "https://t.co/9MhTNADEqO",
          "entities": {
            "url": {
              "urls": [
                {
                  "url": "https://t.co/9MhTNADEqO",
                  "expanded_url": "http://artymowski.pl",
                  "display_url": "artymowski.pl",
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
          "followers_count": 6477,
          "friends_count": 3926,
          "listed_count": 84,
          "created_at": "Thu May 06 00:35:44 +0000 2010",
          "favourites_count": 28088,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": true,
          "verified": false,
          "statuses_count": 35721,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "C0DEED",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/1040834035398975488/Q58RBl5Y_normal.jpg",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/1040834035398975488/Q58RBl5Y_normal.jpg",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/140622656/1478851361",
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
        "retweet_count": 2,
        "favorite_count": 3,
        "favorited": false,
        "retweeted": false,
        "possibly_sensitive": false,
        "lang": "pl"
      },
      "is_quote_status": false,
      "retweet_count": 2,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 08:55:34 +0000 2019",
      "id": 1207947640698220500,
      "id_str": "1207947640698220545",
      "text": "RT @LegiaNet: Zakończyć ten rok wygraną❗️\n\n⚽ Zagłębie Lubin - Legia Warszawa\n🕠 20:30\n🏟 Lubin, ul. Marii Skłodowskiej-Curie 98\n🏆 20. kolejka…",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "LegiaNet",
            "name": "Legia.Net",
            "id": 399912837,
            "id_str": "399912837",
            "indices": [
              3,
              12
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
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 292375313,
        "id_str": "292375313",
        "name": "JUSTYNA 🇵🇱",
        "screen_name": "Justynkapolska",
        "location": "Brwinów, Polska 🇵🇱 💖",
        "description": "» MY NAME IS JUSTYNA ~ POLISH 🇵🇱, I'M 27 YEARS ~ I LiVE iN FRANCE ~ #POLSKA 🇵🇱 💕",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 1353,
        "friends_count": 113,
        "listed_count": 288,
        "created_at": "Tue May 03 15:08:50 +0000 2011",
        "favourites_count": 8,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 197672,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "FFFFFF",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1196202912759848960/wva-Rk5t_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1196202912759848960/wva-Rk5t_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/292375313/1544117485",
        "profile_link_color": "19CF86",
        "profile_sidebar_border_color": "FFFFFF",
        "profile_sidebar_fill_color": "00B7FF",
        "profile_text_color": "FAF2FA",
        "profile_use_background_image": true,
        "has_extended_profile": true,
        "default_profile": false,
        "default_profile_image": false,
        "following": false,
        "follow_request_sent": false,
        "notifications": false,
        "translator_type": "regular"
      },
      "geo": null,
      "coordinates": null,
      "place": null,
      "contributors": null,
      "retweeted_status": {
        "created_at": "Fri Dec 20 08:09:13 +0000 2019",
        "id": 1207935974170333200,
        "id_str": "1207935974170333184",
        "text": "Zakończyć ten rok wygraną❗️\n\n⚽ Zagłębie Lubin - Legia Warszawa\n🕠 20:30\n🏟 Lubin, ul. Marii Skłodowskiej-Curie 98\n🏆 2… https://t.co/FCJqPKcW1q",
        "truncated": true,
        "entities": {
          "hashtags": [],
          "symbols": [],
          "user_mentions": [],
          "urls": [
            {
              "url": "https://t.co/FCJqPKcW1q",
              "expanded_url": "https://twitter.com/i/web/status/1207935974170333184",
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
        "source": "<a href=\"http://twitter.com/download/android\" rel=\"nofollow\">Twitter for Android</a>",
        "in_reply_to_status_id": null,
        "in_reply_to_status_id_str": null,
        "in_reply_to_user_id": null,
        "in_reply_to_user_id_str": null,
        "in_reply_to_screen_name": null,
        "user": {
          "id": 399912837,
          "id_str": "399912837",
          "name": "Legia.Net",
          "screen_name": "LegiaNet",
          "location": "Warszawa",
          "description": "https://t.co/R0PsqvTnZo - Serwis informacyjny o Legii Warszawa! Relacje, wywiady, artykuły, komentarze, zdjęcia, materiały wideo i wiele innych!",
          "url": "https://t.co/R0PsqvTnZo",
          "entities": {
            "url": {
              "urls": [
                {
                  "url": "https://t.co/R0PsqvTnZo",
                  "expanded_url": "http://www.legia.net",
                  "display_url": "legia.net",
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
                  "url": "https://t.co/R0PsqvTnZo",
                  "expanded_url": "http://www.legia.net",
                  "display_url": "legia.net",
                  "indices": [
                    0,
                    23
                  ]
                }
              ]
            }
          },
          "protected": false,
          "followers_count": 30009,
          "friends_count": 88,
          "listed_count": 86,
          "created_at": "Fri Oct 28 07:09:16 +0000 2011",
          "favourites_count": 4787,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": true,
          "verified": true,
          "statuses_count": 28275,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "071C09",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme3/bg.gif",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme3/bg.gif",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/766256413157056512/c5TDiADc_normal.jpg",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/766256413157056512/c5TDiADc_normal.jpg",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/399912837/1527267484",
          "profile_link_color": "045233",
          "profile_sidebar_border_color": "FFFFFF",
          "profile_sidebar_fill_color": "E3E2DE",
          "profile_text_color": "634047",
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
        "is_quote_status": false,
        "retweet_count": 1,
        "favorite_count": 28,
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
      "created_at": "Fri Dec 20 08:54:59 +0000 2019",
      "id": 1207947493209718800,
      "id_str": "1207947493209718787",
      "text": "RT @warszawa: Mam tak samo jak Ty, miasto moje, a w nim… piękny mural na ul. Płytowej. 😍 Podobizna Czesława Niemena pojawiła się nieopodal…",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "warszawa",
            "name": "Warszawa",
            "id": 199290168,
            "id_str": "199290168",
            "indices": [
              3,
              12
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
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 292375313,
        "id_str": "292375313",
        "name": "JUSTYNA 🇵🇱",
        "screen_name": "Justynkapolska",
        "location": "Brwinów, Polska 🇵🇱 💖",
        "description": "» MY NAME IS JUSTYNA ~ POLISH 🇵🇱, I'M 27 YEARS ~ I LiVE iN FRANCE ~ #POLSKA 🇵🇱 💕",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 1353,
        "friends_count": 113,
        "listed_count": 288,
        "created_at": "Tue May 03 15:08:50 +0000 2011",
        "favourites_count": 8,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 197672,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "FFFFFF",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1196202912759848960/wva-Rk5t_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1196202912759848960/wva-Rk5t_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/292375313/1544117485",
        "profile_link_color": "19CF86",
        "profile_sidebar_border_color": "FFFFFF",
        "profile_sidebar_fill_color": "00B7FF",
        "profile_text_color": "FAF2FA",
        "profile_use_background_image": true,
        "has_extended_profile": true,
        "default_profile": false,
        "default_profile_image": false,
        "following": false,
        "follow_request_sent": false,
        "notifications": false,
        "translator_type": "regular"
      },
      "geo": null,
      "coordinates": null,
      "place": null,
      "contributors": null,
      "retweeted_status": {
        "created_at": "Fri Dec 20 08:33:02 +0000 2019",
        "id": 1207941966790582300,
        "id_str": "1207941966790582272",
        "text": "Mam tak samo jak Ty, miasto moje, a w nim… piękny mural na ul. Płytowej. 😍 Podobizna Czesława Niemena pojawiła się… https://t.co/VxaTdx51f0",
        "truncated": true,
        "entities": {
          "hashtags": [],
          "symbols": [],
          "user_mentions": [],
          "urls": [
            {
              "url": "https://t.co/VxaTdx51f0",
              "expanded_url": "https://twitter.com/i/web/status/1207941966790582272",
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
        "source": "<a href=\"https://about.twitter.com/products/tweetdeck\" rel=\"nofollow\">TweetDeck</a>",
        "in_reply_to_status_id": null,
        "in_reply_to_status_id_str": null,
        "in_reply_to_user_id": null,
        "in_reply_to_user_id_str": null,
        "in_reply_to_screen_name": null,
        "user": {
          "id": 199290168,
          "id_str": "199290168",
          "name": "Warszawa",
          "screen_name": "warszawa",
          "location": "Warszawa, Mazowieckie",
          "description": "Ćwierkamy o #Warszawa. Profil oficjalny m.st. Warszawy.",
          "url": "http://t.co/SKFjW2167I",
          "entities": {
            "url": {
              "urls": [
                {
                  "url": "http://t.co/SKFjW2167I",
                  "expanded_url": "http://www.um.warszawa.pl",
                  "display_url": "um.warszawa.pl",
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
          "followers_count": 269980,
          "friends_count": 169,
          "listed_count": 226,
          "created_at": "Wed Oct 06 14:07:01 +0000 2010",
          "favourites_count": 12336,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": true,
          "verified": false,
          "statuses_count": 26999,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "FFFFFF",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/1096833583791202306/aw7jodpY_normal.png",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/1096833583791202306/aw7jodpY_normal.png",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/199290168/1570037559",
          "profile_link_color": "0771B7",
          "profile_sidebar_border_color": "FFFFFF",
          "profile_sidebar_fill_color": "E1E1E1",
          "profile_text_color": "616161",
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
        "is_quote_status": false,
        "retweet_count": 2,
        "favorite_count": 7,
        "favorited": false,
        "retweeted": false,
        "possibly_sensitive": false,
        "lang": "pl"
      },
      "is_quote_status": false,
      "retweet_count": 2,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 08:54:26 +0000 2019",
      "id": 1207947354223136800,
      "id_str": "1207947354223136768",
      "text": "RT @wirtualnemedia: .@LegiaWarszawa w zeszłym sezonie z 30 mln zł straty. Zmalały wpływy od sponsorów, z biletów i praw tv, wzrosły z trans…",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "wirtualnemedia",
            "name": "Wirtualnemedia.pl",
            "id": 77230979,
            "id_str": "77230979",
            "indices": [
              3,
              18
            ]
          },
          {
            "screen_name": "LegiaWarszawa",
            "name": "Legia Warszawa",
            "id": 55007258,
            "id_str": "55007258",
            "indices": [
              21,
              35
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
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 1015664274226769900,
        "id_str": "1015664274226769920",
        "name": "Nata(L)ia",
        "screen_name": "diesnatalis_",
        "location": "",
        "description": "Legia Warszawa. Z rzeczy najmniej ważnych piłka nożna jest najważniejsza - JPII. Zdjęcia: @mat_kostrzewa",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 290,
        "friends_count": 521,
        "listed_count": 0,
        "created_at": "Sat Jul 07 18:30:07 +0000 2018",
        "favourites_count": 12352,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 2449,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "F5F8FA",
        "profile_background_image_url": null,
        "profile_background_image_url_https": null,
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1135176948697767936/GzdbCF-L_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1135176948697767936/GzdbCF-L_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/1015664274226769920/1575877276",
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
        "created_at": "Fri Dec 20 08:40:23 +0000 2019",
        "id": 1207943819620163600,
        "id_str": "1207943819620163584",
        "text": ".@LegiaWarszawa w zeszłym sezonie z 30 mln zł straty. Zmalały wpływy od sponsorów, z biletów i praw tv, wzrosły z t… https://t.co/kWXmg5itRq",
        "truncated": true,
        "entities": {
          "hashtags": [],
          "symbols": [],
          "user_mentions": [
            {
              "screen_name": "LegiaWarszawa",
              "name": "Legia Warszawa",
              "id": 55007258,
              "id_str": "55007258",
              "indices": [
                1,
                15
              ]
            }
          ],
          "urls": [
            {
              "url": "https://t.co/kWXmg5itRq",
              "expanded_url": "https://twitter.com/i/web/status/1207943819620163584",
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
          "id": 77230979,
          "id_str": "77230979",
          "name": "Wirtualnemedia.pl",
          "screen_name": "wirtualnemedia",
          "location": "",
          "description": "Największy polski portal informacyjny o mediach, internecie, reklamie, marketingu, PR",
          "url": "https://t.co/XHVJUDswIJ",
          "entities": {
            "url": {
              "urls": [
                {
                  "url": "https://t.co/XHVJUDswIJ",
                  "expanded_url": "https://www.wirtualnemedia.pl/",
                  "display_url": "wirtualnemedia.pl",
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
          "followers_count": 42177,
          "friends_count": 662,
          "listed_count": 310,
          "created_at": "Fri Sep 25 14:53:00 +0000 2009",
          "favourites_count": 156,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": false,
          "verified": true,
          "statuses_count": 37839,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "C0DEED",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/1129585320297738240/sf8NEniQ_normal.png",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/1129585320297738240/sf8NEniQ_normal.png",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/77230979/1558149119",
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
        "retweet_count": 8,
        "favorite_count": 5,
        "favorited": false,
        "retweeted": false,
        "possibly_sensitive": false,
        "lang": "pl"
      },
      "is_quote_status": false,
      "retweet_count": 8,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 08:52:56 +0000 2019",
      "id": 1207946976559534000,
      "id_str": "1207946976559534080",
      "text": "Jak ustalił reporter @tvnwarszawa - mężczyzna wraz z trójką kompanów chwilę wcześniej zostali wyrzuceni z klubu.\n\nhttps://t.co/HuOCc4IFVY",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "tvnwarszawa",
            "name": "TVN Warszawa",
            "id": 39568364,
            "id_str": "39568364",
            "indices": [
              21,
              33
            ]
          }
        ],
        "urls": [
          {
            "url": "https://t.co/HuOCc4IFVY",
            "expanded_url": "https://tvn24.pl/tvnwarszawa/ulice/warszawa-wypadek-na-wierzbowej-kierowca-pod-wplywem-alkoholu-wczesniej-wyrzucili-ich-z-klubu-nagranie-2612763",
            "display_url": "tvn24.pl/tvnwarszawa/ul…",
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
      "source": "<a href=\"https://about.twitter.com/products/tweetdeck\" rel=\"nofollow\">TweetDeck</a>",
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 39568364,
        "id_str": "39568364",
        "name": "TVN Warszawa",
        "screen_name": "tvnwarszawa",
        "location": "Warszawa",
        "description": "Najszybsze informacje i zawsze aktualny serwis wideo z Warszawy.\n\nCzłonek rodziny @tvn24.",
        "url": "http://t.co/LEKxKX2KCE",
        "entities": {
          "url": {
            "urls": [
              {
                "url": "http://t.co/LEKxKX2KCE",
                "expanded_url": "http://www.tvnwarszawa.pl",
                "display_url": "tvnwarszawa.pl",
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
        "followers_count": 307387,
        "friends_count": 20,
        "listed_count": 383,
        "created_at": "Tue May 12 19:02:00 +0000 2009",
        "favourites_count": 10,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": true,
        "statuses_count": 60564,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "BDD639",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/875694889287245824/N0sZ9iyf_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/875694889287245824/N0sZ9iyf_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/39568364/1479885459",
        "profile_link_color": "1B95E0",
        "profile_sidebar_border_color": "FFFFFF",
        "profile_sidebar_fill_color": "99CC33",
        "profile_text_color": "3E4415",
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
      "is_quote_status": false,
      "retweet_count": 0,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "possibly_sensitive": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 08:52:40 +0000 2019",
      "id": 1207946909505216500,
      "id_str": "1207946909505216513",
      "text": "Jest sprawozdanie finansowe Legii w KRS.⬇️\n\n#Legia\n\nhttps://t.co/4BeJ4enTpr",
      "truncated": false,
      "entities": {
        "hashtags": [
          {
            "text": "Legia",
            "indices": [
              44,
              50
            ]
          }
        ],
        "symbols": [],
        "user_mentions": [],
        "urls": [
          {
            "url": "https://t.co/4BeJ4enTpr",
            "expanded_url": "https://www.wirtualnemedia.pl/artykul/legia-warszawa-wyniki-finansowe-2019-roku-bilety-sponsorzy-i-transmisje-zarobki-pilkarzy-transfer-sebastian-szymanski",
            "display_url": "wirtualnemedia.pl/artykul/legia-…",
            "indices": [
              52,
              75
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
        "id": 1633035042,
        "id_str": "1633035042",
        "name": "Kuba Majewski",
        "screen_name": "QbasLL",
        "location": "Warszawa",
        "description": "tata Olusia, https://t.co/EzEPpcUPIM, doktor nauk prawnych, specjalizacja: bezpieczeństwo imprez masowych.",
        "url": "https://t.co/YbXQhYRx78",
        "entities": {
          "url": {
            "urls": [
              {
                "url": "https://t.co/YbXQhYRx78",
                "expanded_url": "http://jakubmajewski.com",
                "display_url": "jakubmajewski.com",
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
                "url": "https://t.co/EzEPpcUPIM",
                "expanded_url": "http://Legionisci.com",
                "display_url": "Legionisci.com",
                "indices": [
                  13,
                  36
                ]
              }
            ]
          }
        },
        "protected": false,
        "followers_count": 6183,
        "friends_count": 140,
        "listed_count": 12,
        "created_at": "Tue Jul 30 14:33:07 +0000 2013",
        "favourites_count": 18666,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 19644,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "3B94D9",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1047094316508897280/Bep97uUn_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1047094316508897280/Bep97uUn_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/1633035042/1511768445",
        "profile_link_color": "3B94D9",
        "profile_sidebar_border_color": "000000",
        "profile_sidebar_fill_color": "000000",
        "profile_text_color": "000000",
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
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "possibly_sensitive": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 08:51:13 +0000 2019",
      "id": 1207946543162155000,
      "id_str": "1207946543162155008",
      "text": "RT @rzeczpospolita: Jest zgoda na zatrzymanie i areszt sędziego z #Warszawa \n\nhttps://t.co/XYOGj5zUPt",
      "truncated": false,
      "entities": {
        "hashtags": [
          {
            "text": "Warszawa",
            "indices": [
              66,
              75
            ]
          }
        ],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "rzeczpospolita",
            "name": "Rzeczpospolita",
            "id": 194399035,
            "id_str": "194399035",
            "indices": [
              3,
              18
            ]
          }
        ],
        "urls": [
          {
            "url": "https://t.co/XYOGj5zUPt",
            "expanded_url": "http://bit.ly/34ExlpD",
            "display_url": "bit.ly/34ExlpD",
            "indices": [
              78,
              101
            ]
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
        "id": 265934255,
        "id_str": "265934255",
        "name": "Maciej Stańczyk",
        "screen_name": "stanczykmaciej",
        "location": "Kraków, Warszawa",
        "description": "Sport, turystyka, polityka. \nNiech wasza mowa będzie: Tak, tak; nie, nie. A co nadto jest, od Złego pochodzi #PolskaJestPiękna #OłtarzePolskie",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 6104,
        "friends_count": 2126,
        "listed_count": 53,
        "created_at": "Mon Mar 14 11:10:08 +0000 2011",
        "favourites_count": 57280,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 52028,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "115E11",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme14/bg.gif",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme14/bg.gif",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1121834519613644800/1pS0q3Xc_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1121834519613644800/1pS0q3Xc_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/265934255/1396533729",
        "profile_link_color": "357DBD",
        "profile_sidebar_border_color": "FFFFFF",
        "profile_sidebar_fill_color": "63544F",
        "profile_text_color": "33333C",
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
      "retweeted_status": {
        "created_at": "Fri Dec 20 08:50:11 +0000 2019",
        "id": 1207946282800681000,
        "id_str": "1207946282800680960",
        "text": "Jest zgoda na zatrzymanie i areszt sędziego z #Warszawa \n\nhttps://t.co/XYOGj5zUPt",
        "truncated": false,
        "entities": {
          "hashtags": [
            {
              "text": "Warszawa",
              "indices": [
                46,
                55
              ]
            }
          ],
          "symbols": [],
          "user_mentions": [],
          "urls": [
            {
              "url": "https://t.co/XYOGj5zUPt",
              "expanded_url": "http://bit.ly/34ExlpD",
              "display_url": "bit.ly/34ExlpD",
              "indices": [
                58,
                81
              ]
            }
          ]
        },
        "metadata": {
          "iso_language_code": "pl",
          "result_type": "recent"
        },
        "source": "<a href=\"https://about.twitter.com/products/tweetdeck\" rel=\"nofollow\">TweetDeck</a>",
        "in_reply_to_status_id": null,
        "in_reply_to_status_id_str": null,
        "in_reply_to_user_id": null,
        "in_reply_to_user_id_str": null,
        "in_reply_to_screen_name": null,
        "user": {
          "id": 194399035,
          "id_str": "194399035",
          "name": "Rzeczpospolita",
          "screen_name": "rzeczpospolita",
          "location": "Polska",
          "description": "Rzeczpospolita to jeden z liderów prasy codziennej w Polsce. Jest najczęściej cytowaną gazetą w kraju. Oto jedyny oficjalny profil Rz.",
          "url": "https://t.co/lg4AvBS252",
          "entities": {
            "url": {
              "urls": [
                {
                  "url": "https://t.co/lg4AvBS252",
                  "expanded_url": "http://www.rp.pl",
                  "display_url": "rp.pl",
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
          "followers_count": 183201,
          "friends_count": 563,
          "listed_count": 857,
          "created_at": "Fri Sep 24 01:14:56 +0000 2010",
          "favourites_count": 1837,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": false,
          "verified": true,
          "statuses_count": 165461,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "F7F7F7",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme7/bg.gif",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme7/bg.gif",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/1087349179230445570/WznQGNHL_normal.jpg",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/1087349179230445570/WznQGNHL_normal.jpg",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/194399035/1574175259",
          "profile_link_color": "CC0000",
          "profile_sidebar_border_color": "000000",
          "profile_sidebar_fill_color": "F3F3F3",
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
        "is_quote_status": false,
        "retweet_count": 3,
        "favorite_count": 1,
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
      "created_at": "Fri Dec 20 08:50:32 +0000 2019",
      "id": 1207946372617556000,
      "id_str": "1207946372617555968",
      "text": "RT @MirekRozanski: @MON_GOV_PL @1BLTr_Warszawa @mblaszczak Są to śmigłowce jedynie dla pilotów i na pokazy ( PIKNIKI ) w obecnej konfigurac…",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "MirekRozanski",
            "name": "Mirosław Różański",
            "id": 1346168804,
            "id_str": "1346168804",
            "indices": [
              3,
              17
            ]
          },
          {
            "screen_name": "MON_GOV_PL",
            "name": "Ministerstwo Obrony Narodowej 🇵🇱",
            "id": 358136787,
            "id_str": "358136787",
            "indices": [
              19,
              30
            ]
          },
          {
            "screen_name": "1BLTr_Warszawa",
            "name": "@1BLTr",
            "id": 760782291048206300,
            "id_str": "760782291048206336",
            "indices": [
              31,
              46
            ]
          },
          {
            "screen_name": "mblaszczak",
            "name": "Mariusz Błaszczak",
            "id": 138048156,
            "id_str": "138048156",
            "indices": [
              47,
              58
            ]
          }
        ],
        "urls": []
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
        "id": 4250317419,
        "id_str": "4250317419",
        "name": "Arek",
        "screen_name": "slowianin2014",
        "location": "",
        "description": "",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 8,
        "friends_count": 144,
        "listed_count": 0,
        "created_at": "Sun Nov 22 15:06:43 +0000 2015",
        "favourites_count": 3257,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 1940,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "C0DEED",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/668446509269127168/cDVOYhA7_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/668446509269127168/cDVOYhA7_normal.jpg",
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
        "created_at": "Thu Dec 19 18:51:07 +0000 2019",
        "id": 1207735127905841200,
        "id_str": "1207735127905841153",
        "text": "@MON_GOV_PL @1BLTr_Warszawa @mblaszczak Są to śmigłowce jedynie dla pilotów i na pokazy ( PIKNIKI ) w obecnej konfi… https://t.co/R2U7XVUNdT",
        "truncated": true,
        "entities": {
          "hashtags": [],
          "symbols": [],
          "user_mentions": [
            {
              "screen_name": "MON_GOV_PL",
              "name": "Ministerstwo Obrony Narodowej 🇵🇱",
              "id": 358136787,
              "id_str": "358136787",
              "indices": [
                0,
                11
              ]
            },
            {
              "screen_name": "1BLTr_Warszawa",
              "name": "@1BLTr",
              "id": 760782291048206300,
              "id_str": "760782291048206336",
              "indices": [
                12,
                27
              ]
            },
            {
              "screen_name": "mblaszczak",
              "name": "Mariusz Błaszczak",
              "id": 138048156,
              "id_str": "138048156",
              "indices": [
                28,
                39
              ]
            }
          ],
          "urls": [
            {
              "url": "https://t.co/R2U7XVUNdT",
              "expanded_url": "https://twitter.com/i/web/status/1207735127905841153",
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
        "in_reply_to_status_id": 1207611521045532700,
        "in_reply_to_status_id_str": "1207611521045532672",
        "in_reply_to_user_id": 358136787,
        "in_reply_to_user_id_str": "358136787",
        "in_reply_to_screen_name": "MON_GOV_PL",
        "user": {
          "id": 1346168804,
          "id_str": "1346168804",
          "name": "Mirosław Różański",
          "screen_name": "MirekRozanski",
          "location": "Polska",
          "description": "Prezes Fundacji Bezpieczeństwa i Rozwoju STRATPOINTS",
          "url": "https://t.co/39iYWeiywD",
          "entities": {
            "url": {
              "urls": [
                {
                  "url": "https://t.co/39iYWeiywD",
                  "expanded_url": "http://www.stratpoints.eu",
                  "display_url": "stratpoints.eu",
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
          "followers_count": 15588,
          "friends_count": 193,
          "listed_count": 62,
          "created_at": "Fri Apr 12 06:46:21 +0000 2013",
          "favourites_count": 3697,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": false,
          "verified": false,
          "statuses_count": 5007,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "C0DEED",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/836534370752155648/hwTrzRfv_normal.jpg",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/836534370752155648/hwTrzRfv_normal.jpg",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/1346168804/1488280290",
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
        "retweet_count": 3,
        "favorite_count": 20,
        "favorited": false,
        "retweeted": false,
        "lang": "pl"
      },
      "is_quote_status": false,
      "retweet_count": 3,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 08:50:28 +0000 2019",
      "id": 1207946357958488000,
      "id_str": "1207946357958488064",
      "text": "RT @rzeczpospolita: Jest zgoda na zatrzymanie i areszt sędziego z #Warszawa \n\nhttps://t.co/XYOGj5zUPt",
      "truncated": false,
      "entities": {
        "hashtags": [
          {
            "text": "Warszawa",
            "indices": [
              66,
              75
            ]
          }
        ],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "rzeczpospolita",
            "name": "Rzeczpospolita",
            "id": 194399035,
            "id_str": "194399035",
            "indices": [
              3,
              18
            ]
          }
        ],
        "urls": [
          {
            "url": "https://t.co/XYOGj5zUPt",
            "expanded_url": "http://bit.ly/34ExlpD",
            "display_url": "bit.ly/34ExlpD",
            "indices": [
              78,
              101
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
        "id": 864355611521175600,
        "id_str": "864355611521175555",
        "name": "Krzysztof Grabowski #SilniRazem",
        "screen_name": "krzyszt84690756",
        "location": "",
        "description": "",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 695,
        "friends_count": 197,
        "listed_count": 4,
        "created_at": "Tue May 16 05:43:31 +0000 2017",
        "favourites_count": 64409,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 54937,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "F5F8FA",
        "profile_background_image_url": null,
        "profile_background_image_url_https": null,
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1029243606102691842/WIbLCG08_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1029243606102691842/WIbLCG08_normal.jpg",
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
        "created_at": "Fri Dec 20 08:50:11 +0000 2019",
        "id": 1207946282800681000,
        "id_str": "1207946282800680960",
        "text": "Jest zgoda na zatrzymanie i areszt sędziego z #Warszawa \n\nhttps://t.co/XYOGj5zUPt",
        "truncated": false,
        "entities": {
          "hashtags": [
            {
              "text": "Warszawa",
              "indices": [
                46,
                55
              ]
            }
          ],
          "symbols": [],
          "user_mentions": [],
          "urls": [
            {
              "url": "https://t.co/XYOGj5zUPt",
              "expanded_url": "http://bit.ly/34ExlpD",
              "display_url": "bit.ly/34ExlpD",
              "indices": [
                58,
                81
              ]
            }
          ]
        },
        "metadata": {
          "iso_language_code": "pl",
          "result_type": "recent"
        },
        "source": "<a href=\"https://about.twitter.com/products/tweetdeck\" rel=\"nofollow\">TweetDeck</a>",
        "in_reply_to_status_id": null,
        "in_reply_to_status_id_str": null,
        "in_reply_to_user_id": null,
        "in_reply_to_user_id_str": null,
        "in_reply_to_screen_name": null,
        "user": {
          "id": 194399035,
          "id_str": "194399035",
          "name": "Rzeczpospolita",
          "screen_name": "rzeczpospolita",
          "location": "Polska",
          "description": "Rzeczpospolita to jeden z liderów prasy codziennej w Polsce. Jest najczęściej cytowaną gazetą w kraju. Oto jedyny oficjalny profil Rz.",
          "url": "https://t.co/lg4AvBS252",
          "entities": {
            "url": {
              "urls": [
                {
                  "url": "https://t.co/lg4AvBS252",
                  "expanded_url": "http://www.rp.pl",
                  "display_url": "rp.pl",
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
          "followers_count": 183201,
          "friends_count": 563,
          "listed_count": 857,
          "created_at": "Fri Sep 24 01:14:56 +0000 2010",
          "favourites_count": 1837,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": false,
          "verified": true,
          "statuses_count": 165461,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "F7F7F7",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme7/bg.gif",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme7/bg.gif",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/1087349179230445570/WznQGNHL_normal.jpg",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/1087349179230445570/WznQGNHL_normal.jpg",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/194399035/1574175259",
          "profile_link_color": "CC0000",
          "profile_sidebar_border_color": "000000",
          "profile_sidebar_fill_color": "F3F3F3",
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
        "is_quote_status": false,
        "retweet_count": 3,
        "favorite_count": 1,
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
      "created_at": "Fri Dec 20 08:50:12 +0000 2019",
      "id": 1207946287221530600,
      "id_str": "1207946287221530624",
      "text": "RT @AdKopysc: Z okazji zbliżających się Świąt Bożego Narodzenia🎄, przypomnienie od @SGGW_Warszawa👏👇i prośba (bo te Święta to przeżycie duch…",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "AdKopysc",
            "name": "Adam Kopyść",
            "id": 707894820568768500,
            "id_str": "707894820568768512",
            "indices": [
              3,
              12
            ]
          },
          {
            "screen_name": "SGGW_Warszawa",
            "name": "SGGW w Warszawie",
            "id": 198659808,
            "id_str": "198659808",
            "indices": [
              83,
              97
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
        "id": 939934896306511900,
        "id_str": "939934896306511872",
        "name": "Jerzy H. Czembor",
        "screen_name": "CzemborJerzyH",
        "location": "",
        "description": "Plant Pathology, Plant Breeding, IPM, Barley, Wheat, Triticale, Powdery mildew, Rusts, Biodiversity, Genebank, Germplasm, Genetic resources, Molecular markers",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 724,
        "friends_count": 1943,
        "listed_count": 7,
        "created_at": "Sun Dec 10 19:08:37 +0000 2017",
        "favourites_count": 7794,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 13123,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "000000",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/939938886725357568/M1nwZmZM_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/939938886725357568/M1nwZmZM_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/939934896306511872/1533823379",
        "profile_link_color": "1B95E0",
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
      "retweeted_status": {
        "created_at": "Fri Dec 20 07:15:27 +0000 2019",
        "id": 1207922446369771500,
        "id_str": "1207922446369771521",
        "text": "Z okazji zbliżających się Świąt Bożego Narodzenia🎄, przypomnienie od @SGGW_Warszawa👏👇i prośba (bo te Święta to prze… https://t.co/MPPFTyIg1O",
        "truncated": true,
        "entities": {
          "hashtags": [],
          "symbols": [],
          "user_mentions": [
            {
              "screen_name": "SGGW_Warszawa",
              "name": "SGGW w Warszawie",
              "id": 198659808,
              "id_str": "198659808",
              "indices": [
                69,
                83
              ]
            }
          ],
          "urls": [
            {
              "url": "https://t.co/MPPFTyIg1O",
              "expanded_url": "https://twitter.com/i/web/status/1207922446369771521",
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
          "id": 707894820568768500,
          "id_str": "707894820568768512",
          "name": "Adam Kopyść",
          "screen_name": "AdKopysc",
          "location": "Warszawa, Polska",
          "description": "#doceńRolnika👩🏼‍🌾👨🏻‍🌾 bo #JestRolnikJestŻywność🍲 / fan @stalgorzow1947 / #RolnictwoZrównoważone w @bayer4crops / tt prywatnie",
          "url": "https://t.co/5KKvSY4UCa",
          "entities": {
            "url": {
              "urls": [
                {
                  "url": "https://t.co/5KKvSY4UCa",
                  "expanded_url": "http://bit.ly/2ldPPw2",
                  "display_url": "bit.ly/2ldPPw2",
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
          "followers_count": 408,
          "friends_count": 379,
          "listed_count": 4,
          "created_at": "Thu Mar 10 11:44:12 +0000 2016",
          "favourites_count": 5743,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": false,
          "verified": false,
          "statuses_count": 1619,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "F5F8FA",
          "profile_background_image_url": null,
          "profile_background_image_url_https": null,
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/1104358750331330560/A6qj6ERb_normal.jpg",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/1104358750331330560/A6qj6ERb_normal.jpg",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/707894820568768512/1537732675",
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
        "retweet_count": 6,
        "favorite_count": 9,
        "favorited": false,
        "retweeted": false,
        "possibly_sensitive": false,
        "lang": "pl"
      },
      "is_quote_status": false,
      "retweet_count": 6,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 08:50:11 +0000 2019",
      "id": 1207946282800681000,
      "id_str": "1207946282800680960",
      "text": "Jest zgoda na zatrzymanie i areszt sędziego z #Warszawa \n\nhttps://t.co/XYOGj5zUPt",
      "truncated": false,
      "entities": {
        "hashtags": [
          {
            "text": "Warszawa",
            "indices": [
              46,
              55
            ]
          }
        ],
        "symbols": [],
        "user_mentions": [],
        "urls": [
          {
            "url": "https://t.co/XYOGj5zUPt",
            "expanded_url": "http://bit.ly/34ExlpD",
            "display_url": "bit.ly/34ExlpD",
            "indices": [
              58,
              81
            ]
          }
        ]
      },
      "metadata": {
        "iso_language_code": "pl",
        "result_type": "recent"
      },
      "source": "<a href=\"https://about.twitter.com/products/tweetdeck\" rel=\"nofollow\">TweetDeck</a>",
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 194399035,
        "id_str": "194399035",
        "name": "Rzeczpospolita",
        "screen_name": "rzeczpospolita",
        "location": "Polska",
        "description": "Rzeczpospolita to jeden z liderów prasy codziennej w Polsce. Jest najczęściej cytowaną gazetą w kraju. Oto jedyny oficjalny profil Rz.",
        "url": "https://t.co/lg4AvBS252",
        "entities": {
          "url": {
            "urls": [
              {
                "url": "https://t.co/lg4AvBS252",
                "expanded_url": "http://www.rp.pl",
                "display_url": "rp.pl",
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
        "followers_count": 183201,
        "friends_count": 563,
        "listed_count": 857,
        "created_at": "Fri Sep 24 01:14:56 +0000 2010",
        "favourites_count": 1837,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": true,
        "statuses_count": 165461,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "F7F7F7",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme7/bg.gif",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme7/bg.gif",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1087349179230445570/WznQGNHL_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1087349179230445570/WznQGNHL_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/194399035/1574175259",
        "profile_link_color": "CC0000",
        "profile_sidebar_border_color": "000000",
        "profile_sidebar_fill_color": "F3F3F3",
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
      "is_quote_status": false,
      "retweet_count": 3,
      "favorite_count": 1,
      "favorited": false,
      "retweeted": false,
      "possibly_sensitive": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 08:49:24 +0000 2019",
      "id": 1207946088126255000,
      "id_str": "1207946088126255104",
      "text": "@warszawa A na stacji Wilanowska schody ruchome od pół roku popsute...",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "warszawa",
            "name": "Warszawa",
            "id": 199290168,
            "id_str": "199290168",
            "indices": [
              0,
              9
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
      "in_reply_to_status_id": 1207908494009151500,
      "in_reply_to_status_id_str": "1207908494009151488",
      "in_reply_to_user_id": 199290168,
      "in_reply_to_user_id_str": "199290168",
      "in_reply_to_screen_name": "warszawa",
      "user": {
        "id": 2741592383,
        "id_str": "2741592383",
        "name": "traper",
        "screen_name": "traper_24",
        "location": "",
        "description": "",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 6,
        "friends_count": 40,
        "listed_count": 0,
        "created_at": "Wed Aug 13 09:30:50 +0000 2014",
        "favourites_count": 96,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 301,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "C0DEED",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/666020055029833729/K04E9N05_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/666020055029833729/K04E9N05_normal.jpg",
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
      "created_at": "Fri Dec 20 08:49:01 +0000 2019",
      "id": 1207945992282267600,
      "id_str": "1207945992282267654",
      "text": "RT @JanBaran999: Warszawa nie radzi sobie z uchwalaniem planów zagospodarowania przestrzennego. Przykładem jest moja dzielnica, Praga-Połud…",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "JanBaran999",
            "name": "Janek Baran",
            "id": 2805209977,
            "id_str": "2805209977",
            "indices": [
              3,
              15
            ]
          }
        ],
        "urls": []
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
        "id": 1960626020,
        "id_str": "1960626020",
        "name": "Miasto Jest Nasze 🌳🚊♻️",
        "screen_name": "MiastoJestNasze",
        "location": "Warsaw, Poland",
        "description": "Największy ruch miejski w 🇵🇱 aktywny w Warszawie od 6 lat! Nasze ostatnie akcje: #ChodziOżycie #Betonoza #MamNaToPapier #NowyŁadParkingowy",
        "url": "https://t.co/6cBygWsl2Q",
        "entities": {
          "url": {
            "urls": [
              {
                "url": "https://t.co/6cBygWsl2Q",
                "expanded_url": "http://miastojestnasze.org",
                "display_url": "miastojestnasze.org",
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
        "followers_count": 9740,
        "friends_count": 923,
        "listed_count": 69,
        "created_at": "Mon Oct 14 12:47:46 +0000 2013",
        "favourites_count": 20291,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": true,
        "verified": false,
        "statuses_count": 23482,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "000000",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/1138051464721502208/5xM6JafE_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/1138051464721502208/5xM6JafE_normal.jpg",
        "profile_banner_url": "https://pbs.twimg.com/profile_banners/1960626020/1560095498",
        "profile_link_color": "FFC30B",
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
      "retweeted_status": {
        "created_at": "Thu Dec 19 14:22:21 +0000 2019",
        "id": 1207667491331334100,
        "id_str": "1207667491331334146",
        "text": "Warszawa nie radzi sobie z uchwalaniem planów zagospodarowania przestrzennego. Przykładem jest moja dzielnica, Prag… https://t.co/NKAyL2GkSS",
        "truncated": true,
        "entities": {
          "hashtags": [],
          "symbols": [],
          "user_mentions": [],
          "urls": [
            {
              "url": "https://t.co/NKAyL2GkSS",
              "expanded_url": "https://twitter.com/i/web/status/1207667491331334146",
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
        "source": "<a href=\"http://twitter.com/download/android\" rel=\"nofollow\">Twitter for Android</a>",
        "in_reply_to_status_id": null,
        "in_reply_to_status_id_str": null,
        "in_reply_to_user_id": null,
        "in_reply_to_user_id_str": null,
        "in_reply_to_screen_name": null,
        "user": {
          "id": 2805209977,
          "id_str": "2805209977",
          "name": "Janek Baran",
          "screen_name": "JanBaran999",
          "location": "",
          "description": "Ekonomia, Warszawa | doktorant UW | Stowarzyszenie Miasto Jest Nasze | jedynie prywatne opinie.",
          "url": null,
          "entities": {
            "description": {
              "urls": []
            }
          },
          "protected": false,
          "followers_count": 306,
          "friends_count": 272,
          "listed_count": 0,
          "created_at": "Fri Sep 12 08:21:48 +0000 2014",
          "favourites_count": 1209,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": false,
          "verified": false,
          "statuses_count": 450,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "000000",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/722896020221210626/IIkJihKw_normal.jpg",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/722896020221210626/IIkJihKw_normal.jpg",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/2805209977/1503949067",
          "profile_link_color": "FAB81E",
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
        "retweet_count": 5,
        "favorite_count": 12,
        "favorited": false,
        "retweeted": false,
        "possibly_sensitive": false,
        "lang": "pl"
      },
      "is_quote_status": false,
      "retweet_count": 5,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    },
    {
      "created_at": "Fri Dec 20 08:48:15 +0000 2019",
      "id": 1207945799230988300,
      "id_str": "1207945799230988288",
      "text": "RT @slonka17: Z pracy odeszli doświadczeni specjaliści, z poradni badań prenatalnych przeniesiono personel, a w tym roku wykonano połowę mn…",
      "truncated": false,
      "entities": {
        "hashtags": [],
        "symbols": [],
        "user_mentions": [
          {
            "screen_name": "slonka17",
            "name": "Baśka 🇵🇱 🇪🇺 🏳️‍🌈 💋",
            "id": 3000776210,
            "id_str": "3000776210",
            "indices": [
              3,
              12
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
      "in_reply_to_status_id": null,
      "in_reply_to_status_id_str": null,
      "in_reply_to_user_id": null,
      "in_reply_to_user_id_str": null,
      "in_reply_to_screen_name": null,
      "user": {
        "id": 124900630,
        "id_str": "124900630",
        "name": "Czesław Gawłowski",
        "screen_name": "czegie1",
        "location": "Warsaw, Mazovia",
        "description": "",
        "url": null,
        "entities": {
          "description": {
            "urls": []
          }
        },
        "protected": false,
        "followers_count": 327,
        "friends_count": 839,
        "listed_count": 0,
        "created_at": "Sun Mar 21 00:16:42 +0000 2010",
        "favourites_count": 74941,
        "utc_offset": null,
        "time_zone": null,
        "geo_enabled": false,
        "verified": false,
        "statuses_count": 34664,
        "lang": null,
        "contributors_enabled": false,
        "is_translator": false,
        "is_translation_enabled": false,
        "profile_background_color": "C0DEED",
        "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
        "profile_background_tile": false,
        "profile_image_url": "http://pbs.twimg.com/profile_images/764965773/Perseverance_by_CristinaPenescu_normal.jpg",
        "profile_image_url_https": "https://pbs.twimg.com/profile_images/764965773/Perseverance_by_CristinaPenescu_normal.jpg",
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
        "created_at": "Fri Dec 20 08:24:06 +0000 2019",
        "id": 1207939720426197000,
        "id_str": "1207939720426196992",
        "text": "Z pracy odeszli doświadczeni specjaliści, z poradni badań prenatalnych przeniesiono personel, a w tym roku wykonano… https://t.co/VNpnIgDOAt",
        "truncated": true,
        "entities": {
          "hashtags": [],
          "symbols": [],
          "user_mentions": [],
          "urls": [
            {
              "url": "https://t.co/VNpnIgDOAt",
              "expanded_url": "https://twitter.com/i/web/status/1207939720426196992",
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
        "source": "<a href=\"http://twitter.com/download/android\" rel=\"nofollow\">Twitter for Android</a>",
        "in_reply_to_status_id": null,
        "in_reply_to_status_id_str": null,
        "in_reply_to_user_id": null,
        "in_reply_to_user_id_str": null,
        "in_reply_to_screen_name": null,
        "user": {
          "id": 3000776210,
          "id_str": "3000776210",
          "name": "Baśka 🇵🇱 🇪🇺 🏳️‍🌈 💋",
          "screen_name": "slonka17",
          "location": "Warszawa ",
          "description": "Gorszy sort, antyklerykał. Kocham myślących ludzi, sport, książki i zwierzęta. Przeklinam. Prywatne opinie. Za chamstwo ban.\n#MuremZaKasią",
          "url": null,
          "entities": {
            "description": {
              "urls": []
            }
          },
          "protected": false,
          "followers_count": 3228,
          "friends_count": 2195,
          "listed_count": 9,
          "created_at": "Thu Jan 29 07:37:52 +0000 2015",
          "favourites_count": 61079,
          "utc_offset": null,
          "time_zone": null,
          "geo_enabled": true,
          "verified": false,
          "statuses_count": 21084,
          "lang": null,
          "contributors_enabled": false,
          "is_translator": false,
          "is_translation_enabled": false,
          "profile_background_color": "000000",
          "profile_background_image_url": "http://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_image_url_https": "https://abs.twimg.com/images/themes/theme1/bg.png",
          "profile_background_tile": false,
          "profile_image_url": "http://pbs.twimg.com/profile_images/1114255654439591938/jnJILRu__normal.jpg",
          "profile_image_url_https": "https://pbs.twimg.com/profile_images/1114255654439591938/jnJILRu__normal.jpg",
          "profile_banner_url": "https://pbs.twimg.com/profile_banners/3000776210/1422601967",
          "profile_link_color": "1B95E0",
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
        "retweet_count": 13,
        "favorite_count": 19,
        "favorited": false,
        "retweeted": false,
        "possibly_sensitive": false,
        "lang": "pl"
      },
      "is_quote_status": false,
      "retweet_count": 13,
      "favorite_count": 0,
      "favorited": false,
      "retweeted": false,
      "lang": "pl"
    }
  ],
  "search_metadata": {
    "completed_in": 0.054,
    "max_id": 1207948427755176000,
    "max_id_str": "1207948427755175936",
    "next_results": "?max_id=1207945799230988287&q=warszawa&lang=pl&include_entities=1",
    "query": "warszawa",
    "refresh_url": "?since_id=1207948427755175936&q=warszawa&lang=pl&include_entities=1",
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
