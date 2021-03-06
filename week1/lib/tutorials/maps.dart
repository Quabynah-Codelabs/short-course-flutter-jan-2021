var gifts = <String, dynamic>{
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings',
  'sixth': false,
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

var apiResponse = <String, dynamic>{
  "status": 'ok',
  "totalResults": 70,
  "articles": [
    {
      "source": {"id": null, "name": "Fox Business"},
      "author": "Associated Press",
      "title": "Arizona, 15th state with legal pot, sees recreational sales - Fox Business",
      "description": "86 licenses were aproved n nine of the state's 15 counties under provisions of the marijuana legalization measure",
      "url": "https://www.foxbusiness.com/politics/arizona-15th-state-with-legal-pot-sees-recreational-sales",
      "urlToImage": "https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2021/01/0/0/pot6.jpg?ve=1&tl=1",
      "publishedAt": "2021-01-23T09:11:11Z",
      "content": "Legal sales of recreational marijuana in Arizona started on Friday, a once-unthinkable step in the former conservative stronghold that joins 14 other states that have broadly legalized pot.\r\nThe stat… [+3153 chars]"
    },
    {
      "source": {"id": "cnn", "name": "CNN"},
      "author": "Alta Spells, CNN",
      "title": "The winning ticket in the \$1 billion Mega Millions lottery was bought in Michigan - CNN",
      "description": "Don't forget to check your Mega Millions lottery ticket, especially if you bought it in the state of Michigan.",
      "url": "https://www.cnn.com/2021/01/23/us/mega-millions-winner-michigan-trnd/index.html",
      "urlToImage": "https://cdn.cnn.com/cnnnext/dam/assets/210123012515-mega-millions-ticket-0122-super-tease.jpg",
      "publishedAt": "2021-01-23T07:18:00Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Sean Hannity"},
      "author": null,
      "title": "WHAT CHANGED? Detroit, DC to Resume Indoor Dining at 25% Capacity After Inauguration Day - Sean Hannity",
      "description": "Diners in Washington, DC and Detroit, Michigan will soon be able to consumer food indoors after weeks of closures and re-openings; raising questions...",
      "url": "https://hannity.com/media-room/what-changed-detroit-dc-to-resume-indoor-dining-at-25-capacity-after-inauguration-day/",
      "urlToImage": "https://hannity.com/wp-content/uploads/2020/10/GettyImages-1228828691.jpg",
      "publishedAt": "2021-01-23T07:02:13Z",
      "content": "Diners in Washington, DC and Detroit, Michigan will soon be able to consumer food indoors after weeks of closures and re-openings; raising questions over why both cities have decided to permit the ac… [+2835 chars]"
    },
    {
      "source": {"id": "engadget", "name": "Engadget"},
      "author": "https://www.engadget.com/about/editors/richard-lawler",
      "title": "Facebook inexplicably logs out iPhone users - Engadget",
      "description": "If you use Facebook on an iPhone, then you might have been logged out suddenly on Friday night. Facebook said in a statement that this may be due to a \"configuration change\" and they're looking into it.",
      "url": "https://www.engadget.com/facebook-iphone-outage-logout-061740231.html",
      "urlToImage": "https://s.yimg.com/os/creatr-uploaded-images/2021-01/56ec3f00-5d42-11eb-ad9d-fe71a0ab90cf",
      "publishedAt": "2021-01-23T06:59:10Z",
      "content": "Facebook isnt down, but it did start an odd trending topic on Twitter Friday night as confused iPhone owners tried to figure out why the social network logged them out. I havent found an explanation … [+642 chars]"
    },
    {
      "source": {"id": null, "name": "Atlanta Journal Constitution"},
      "author": "Shaddi Abusaid",
      "title": "Cops: Gwinnett teen stole from Kroger by ‘returning’ unsold lottery tickets - Atlanta Journal Constitution",
      "description": "",
      "url": "https://www.ajc.com/news/cops-gwinnett-teen-stole-from-kroger-by-returning-unsold-lottery-tickets/ZQJZBIWJ5BCYLC362VXS56HTL4/",
      "urlToImage": "https://www.ajc.com/resizer/af13wSHodLWvXHaKXaLGpeADsNw=/1200x630/cloudfront-us-east-1.images.arcpublishing.com/ajc/SCNPMTZVIRBJRMX7HZKWYBIX3I.jpg",
      "publishedAt": "2021-01-23T06:16:52Z",
      "content": "Gwinnett police began investigating Jan. 4 after an employee with Krogers loss prevention office called about the alleged theft, according to an incident report obtained by The Atlanta Journal-Consti… [+4027 chars]"
    },
    {
      "source": {
        "id": "the-wall-street-journal",
        "name": "The Wall Street Journal"
      },
      "author": "Amrith Ramkumar, Maureen Farrell",
      "title": "When SPACs Attack! A New Force Is Invading Wall Street. - The Wall Street Journal",
      "description": "‘Blank check’ firms known as SPACs are in pursuit of America’s hottest startups. Is the invasion a sign of a market euphoria that can’t last?",
      "url": "https://www.wsj.com/articles/when-spacs-attack-a-new-force-is-invading-wall-street-11611378007",
      "urlToImage": "https://images.wsj.net/im-289396/social",
      "publishedAt": "2021-01-23T05:00:00Z",
      "content": "The hottest thing in finance is four letters long. Former NBA star Shaquille ONeal has one. So does former House Speaker Paul Ryan. Same goes for silver-haired hedge-fund billionaire William Ackman. … [+1446 chars]"
    },
    {
      "source": {"id": null, "name": "Gizmodo.com"},
      "author": "Lucas Ropek",
      "title": "Angry Reddit 'Mob' and Shortsellers Clash Over Gamestop's Ridiculous Stock Market Jump - Gizmodo",
      "description": "Video game retailer GameStop, that store you stumble into at the mall while trying to figure out why you’re at a mall, is having quite a moment on Wall Street. The company went on a rollicking market run Friday, skyrocketing nearly 70 percent before trading w…",
      "url": "https://gizmodo.com/angry-reddit-mob-and-shortsellers-clash-over-gamestops-1846113912",
      "urlToImage": "https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/dsc5jqhe5kcxmmch38mv.jpg",
      "publishedAt": "2021-01-23T04:15:00Z",
      "content": "Video game retailer GameStop, that store you stumble into at the mall while trying to figure out why youre at a mall, is having quite a moment on Wall Street. The company went on a rollicking market … [+3533 chars]"
    },
    {
      "source": {"id": null, "name": "Yahoo Entertainment"},
      "author": "Tom Tapp",
      "title": "Los Angeles Covid-19 Update: At Current Pace, It Will Likely Take “Well Into 2022” To Vaccine Enough People To Stop Virus, Says Health Official - Yahoo Entertainment",
      "description": "There was good news and bad news on the LA Covid-19 front on Friday. On the one hand, the key numbers were down virtually across the board. On the other hand...",
      "url": "https://www.yahoo.com/entertainment/los-angeles-covid-19-current-033318928.html",
      "urlToImage": "https://s.yimg.com/ny/api/res/1.2/RItbUccxqeDR_P236Ij0sQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTIwMDA7aD0xMzM0/https://s.yimg.com/uu/api/res/1.2/1wlpWp7QMBB0fDbTw9y5YQ--~B/aD0xNTc1O3c9MjM2MjthcHBpZD15dGFjaHlvbg--/https://media.zenfs.com/en/deadline.com/005670702150728a57df100c69d015c8",
      "publishedAt": "2021-01-23T03:53:02Z",
      "content": "There was good news and bad news on the LA Covid-19 front on Friday. On the one hand, the key numbers were down virtually across the board. On the other hand, with virus variants worrying officials a… [+4330 chars]"
    },
    {
      "source": {"id": null, "name": "KXLY Spokane"},
      "author": null,
      "title": "East region will not advance to Phase 2 this week as case rate, test positivity increase - KXLY Spokane",
      "description": "SPOKANE, Wash. — The east region, as well as the seven other regions across Washington, will stay in Phase 1 of the “Healthy Washington” plan for until at least February 1. The State Department of Health said none of the regions are meeting the metrics requir…",
      "url": "https://www.kxly.com/east-region-will-not-advance-to-phase-2-this-week-as-cases-rate-test-positivity-increase/",
      "urlToImage": "https://wpcdn.us-east-1.vip.tn-cloud.net/www.kxly.com/content/uploads/2021/01/maher-xxx-1.png",
      "publishedAt": "2021-01-23T03:33:45Z",
      "content": "Posted: January 22, 2021 2:39 PM\r\nSPOKANE, Wash. — The east region, as well as the seven other regions across Washington, will stay in Phase 1 of the “Healthy Washington” plan for until at least Febr… [+2002 chars]"
    },
    {
      "source": {"id": "newsweek", "name": "Newsweek"},
      "author": "Aila Slisco",
      "title": "Research on COVID-19 Vaccination Technology Could Lead to HIV, Cancer Vaccines - Newsweek",
      "description": "New vaccines for HIV and seasonal flu are currently under development using the mRNA technique, along with vaccine therapies that could provide new treatments for cancer and other ailments.",
      "url": "https://www.newsweek.com/research-covid-19-vaccination-technology-could-lead-hiv-cancer-vaccines-1563875",
      "urlToImage": "https://d.newsweek.com/en/full/1714746/vaccines-mrna-covid-19-cancer-hiv-flu.jpg",
      "publishedAt": "2021-01-23T03:24:03Z",
      "content": "Vaccines currently being used to prevent COVID-19 were developed with a newer technique that scientists are attempting to use to produce vaccines for HIV, cancer and other ailments.\r\nCOVID-19 vaccine… [+4926 chars]"
    },
    {
      "source": {"id": null, "name": "NBC Chicago"},
      "author": "NBC Chicago",
      "title": "Illinois to Start Phase 1B of Vaccinations, But Not All Who Are Eligible Will Get it at First - NBC Chicago",
      "description": "Illinois and Chicago will both enter the next phase of their vaccination plan starting Monday, but not everyone eligible in the phase will receive the vaccine…",
      "url": "https://www.nbcchicago.com/news/local/illinois-to-start-phase-1b-of-vaccinations-but-not-all-who-are-eligible-will-get-it-at-first/2420810/",
      "urlToImage": "https://media.nbcchicago.com/2021/01/GettyImages-1230157464.jpg?resize=1200%2C675",
      "publishedAt": "2021-01-23T03:19:00Z",
      "content": "Illinois and Chicago will both enter the next phase of their vaccination plan starting Monday, but not everyone eligible in the phase will receive the vaccine right at the start, officials said Frida… [+8424 chars]"
    },
    {
      "source": {"id": null, "name": "WDSU New Orleans"},
      "author": "WDSU Digital Team",
      "title": "Retired Rouses owner says son warned him not to attend rally at Capitol, apologizes again - WDSU New Orleans",
      "description": "Rouse Sr. explained that his son asked him to not attend the rally, but that he didn't listen.",
      "url": "https://www.wdsu.com/article/retired-rouses-owner-says-son-warned-him-not-to-attend-rally-at-capitol-apologizes-again/35293754",
      "urlToImage": "https://kubrick.htvapps.com/htv-prod-media.s3.amazonaws.com/images/rouses-1500242380.jpg?crop=1.00xw:0.754xh;0,0&resize=1200:*",
      "publishedAt": "2021-01-23T02:41:00Z",
      "content": "WASHINGTON —A retired owner of Rouses Markets spoke on the radio Friday to apologize again for his attendance at a protest that turned violent at the U.S. Capitol earlier this month. \r\nDonald Rouse S… [+1721 chars]"
    },
    {
      "source": {"id": "fox-news", "name": "Fox News"},
      "author": "Ann Schmidt",
      "title": "Chick-fil-A adds grilled spicy chicken sandwich to menus nationwide - Fox News",
      "description": "Chick-fil-A’s menu is heating up.",
      "url": "https://www.foxnews.com/food-drink/chick-fil-a-grilled-spicy-chicken-sandwich",
      "urlToImage": "https://static.foxnews.com/foxnews.com/content/uploads/2021/01/Grilled-Spicy-Deluxe-1_Chick-fil-A.jpg",
      "publishedAt": "2021-01-23T02:32:41Z",
      "content": "Chick-fil-As menu is heating up. \r\nOn Friday, the fast food chain announced that it will be releasing its Grilled Spicy Chicken Deluxe Sandwich nationwide starting Monday. \r\nThe sandwich is made with… [+2186 chars]"
    },
    {
      "source": {"id": null, "name": "SFist"},
      "author": "Matt Charnock",
      "title": "Day Around the Bay: Breed Hints San Francisco Could Soon Reopen Under CA Guidelines as Infection Rate Drops - SFist",
      "description": "Multiple arrests were made in connection to last weekend's Tenderloin shooting that injured five people, San Jose firefighters responded to an ammonia spill at a Kellogg's-operated facility, and Breed tweeted SF’s current \"COVID-19 reproductive rate\" Friday m…",
      "url": "https://sfist.com/2021/01/22/day-around-the-bay-breed-hints-san-francisco-could-soon-reopen-under-ca-guidelines-as-infection-rate-drops/",
      "urlToImage": "https://img.sfist.com/2021/01/GettyImages-144720676.jpg",
      "publishedAt": "2021-01-23T02:32:22Z",
      "content": "San Francisco's COVID-19 reproductive rate is back under 1, at 0.99! \r\nThat means for every person who gets COVID-19, on average they're passing it to less than one other person. We're slowing the sp… [+126 chars]"
    },
    {
      "source": {"id": null, "name": "Fox Business"},
      "author": "Paul Best",
      "title": "Boeing readies aircraft to fly 100% on sustainable fuel - Fox Business",
      "description": "Boeing set a goal of making all its aircrafts capable of flying on 100% sustainable aviation fuels by 2030, the company announced Friday.",
      "url": "https://www.foxbusiness.com/energy/boeing-readies-aircraft-to-fly-on-sustainable-fuel",
      "urlToImage": "https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2021/01/0/0/AP21019402071084.jpg?ve=1&tl=1",
      "publishedAt": "2021-01-23T02:23:54Z",
      "content": "Boeing set a goal of making all of its aircrafts capable of flying on 100% sustainable aviation fuels by 2030, the company announced Friday.\r\nBoeing Commercial Airplanes President and CEO Stan Deal s… [+1909 chars]"
    },
    {
      "source": {"id": null, "name": "NBC4 WCMH-TV"},
      "author": "NBC4 staff",
      "title": "1 person critically injured at gas station in east Columbus - NBC4 WCMH-TV",
      "description": "COLUMBUS (WCMH) — One person drove themselves to the hospital after being shot in east Columbus. Investigators say the shooting happened at a Shell gas station located at 5989 East Main Street around 8:05 p.m. The victim who is in critical condition was able …",
      "url": "https://www.nbc4i.com/news/1-person-critically-injured-at-gas-station-in-east-columbus/",
      "urlToImage": "https://www.nbc4i.com/wp-content/uploads/sites/18/2021/01/20210122_205439.jpg?w=1280",
      "publishedAt": "2021-01-23T02:15:00Z",
      "content": "COLUMBUS (WCMH) — One person drove themselves to the hospital after being shot in east Columbus.\r\nInvestigators say the shooting happened at a Shell gas station located at 5989 East Main Street aroun… [+170 chars]"
    },
    {
      "source": {"id": null, "name": "KOMO News"},
      "author": "Associated Press",
      "title": "Seattle 'vaccine' peddler arrested for selling untested drug - KOMO News",
      "description": "SEATTLE (AP) &mdash; A suburban Seattle man who advertised a supposed COVID-19 \"vaccine\" he said he created in his personal lab, has been arrested.  KUOW reports Johnny T. Stine faces a misdemeanor charge of introducing misbranded drugs into interstate commer…",
      "url": "https://komonews.com/news/local/seattle-vaccine-peddler-arrested-for-selling-untested-drug",
      "urlToImage": "https://static-27.sinclairstoryline.com/resources/media/954ca59f-2b02-49ec-9589-8b7ed578cdab-large16x9_arrestgetty2.jpg?1611364101983",
      "publishedAt": "2021-01-23T01:11:58Z",
      "content": null
    },
    {
      "source": {"id": null, "name": "Motley Fool"},
      "author": "Eric Volkman",
      "title": "MGM Resorts Launches Online Sports and Casino Gambling Services in Michigan - Motley Fool",
      "description": "It's doing so with a partner that recently spurned its advances.",
      "url": "https://www.fool.com/investing/2021/01/22/mgm-launches-sports-gambling-services-in-michigan/",
      "urlToImage": "https://g.foolcdn.com/editorial/images/609509/man-with-fisftul-of-cash-in-a-stadium.jpg",
      "publishedAt": "2021-01-23T01:11:00Z",
      "content": "Michigan became the latest state to flip the switch on legalized online casino and sports gambling on Friday, and one ambitious company was right there to take advantage. BetMGM, a joint venture betw… [+1578 chars]"
    },
    {
      "source": {"id": null, "name": "Motley Fool"},
      "author": "Joe Tenebruso",
      "title": "Why IBM Stock Plunged Today - Motley Fool",
      "description": "The tech titan's transition to the cloud isn't going as well as investors hoped.",
      "url": "https://www.fool.com/investing/2021/01/22/why-ibm-stock-plunged-today/",
      "urlToImage": "https://g.foolcdn.com/editorial/images/609508/market-down-gettyimages-638610308.jpg",
      "publishedAt": "2021-01-23T00:35:00Z",
      "content": "What happened\r\nShares of IBM(NYSE:IBM) fell 9.9% on Friday, following the release of the tech giant's fourth-quarter results. \r\nSo what\r\nIBM's revenue declined by 6% year over year to \$20.4 billion. … [+1075 chars]"
    },
    {
      "source": {"id": null, "name": "CNBC"},
      "author": "Kevin Stankiewicz",
      "title": "Cramer’s week ahead: Jam-packed earnings calendar will offer insight into strength of U.S. business - CNBC",
      "description": "Jim Cramer said next week's earnings slate will provide a critical look into the state of U.S. business during \"one of the strangest moments\" he can remember.",
      "url": "https://www.cnbc.com/2021/01/22/cramers-week-ahead-apple-tesla-earnings-to-offer-insight-into-us-business.html",
      "urlToImage": "https://image.cnbcfm.com/api/v1/image/104608847-IMG_5164-jim-cramer.jpg?v=1501019034",
      "publishedAt": "2021-01-23T00:04:00Z",
      "content": "CNBC's Jim Cramer said Friday that next week's slate of earnings reports give investors a critical look into the state of American business during \"one of the strangest moments\" he can remember.\r\nWhi… [+10922 chars]"
    }
  ]
};
