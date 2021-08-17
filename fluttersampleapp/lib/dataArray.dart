import 'dart:convert';

var jsonArray = [
  {
    'title': 'A little about shelby',
    'description':
        'My name is Shelby Gold I am a entreprenuer, and app developer. I have been developing apps for two and a half years and have learned to love the creativity and freedom that I find when developing apps. I have enjoyed working for companies that truely make an impact on the world around me. ',
    'imagePath':
        'https://scontent-den4-1.xx.fbcdn.net/v/t1.6435-9/231495974_10221392922067273_4498855273039545691_n.jpg?_nc_cat=104&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=Za2hyEPkcvcAX_ess9L&_nc_ht=scontent-den4-1.xx&oh=7c6483ba106dcfb3284f5227591b5f5f&oe=61373541'
  },
  {
    'title': 'My Family',
    'description':
        'Before anything else I am a Father and Husband, I love spending time with kids and seeing the world through their eyes. I have been married for 6 years and we have 3 beautiful kids!',
    'imagePath':
        'https://scontent-den4-1.xx.fbcdn.net/v/t1.6435-9/157331238_10220461496182208_3556129987826777489_n.jpg?_nc_cat=103&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=O12kCvee7IgAX9LMbK7&_nc_ht=scontent-den4-1.xx&oh=eb3e2dd673fcdef47dbdf1a3e899e7a2&oe=613A4964',
  },
  {
    'title': 'Traveling',
    'description':
        'I have traveled all around the world and love to experience everything this world has to offer! A bucket list vacation we haven\'t done yet is going back to Uruguay where I lived for 2 years.',
    'imagePath':
        'https://scontent-den4-1.xx.fbcdn.net/v/t1.18169-9/19989627_10211594082144845_4621215372275620020_n.jpg?_nc_cat=102&ccb=1-4&_nc_sid=8bfeb9&_nc_ohc=rYlhAPBtbYcAX8vDE6v&_nc_ht=scontent-den4-1.xx&oh=0ba0e2104c6faad4727d4f47e7f02da6&oe=613A89C6',
  },
  {
    'title': 'Live a life worth remembering!',
    'description':
        'Boating is probably one of my top things I wish I could do more. Let me be outdoors and in nature and I am happy!',
    'imagePath':
        'https://scontent-den4-1.xx.fbcdn.net/v/t31.18172-8/19092625_10155225079490499_5394592323844537050_o.jpg?_nc_cat=105&ccb=1-4&_nc_sid=730e14&_nc_ohc=nHooFEp3RwoAX-MVFe_&_nc_ht=scontent-den4-1.xx&oh=074de21ac4632144200f9a7474184fb4&oe=6137D0B2',
  },
  {
    'title': 'Business Ventures',
    'description':
        'Me and my wife had a dream to own a food truck 5 years ago, so not having any experience building a trailer I youtubed alot and figured out how to bring my vision of a pineapple shaped trailer to life. We now spend our summers traveling to the fairs and festivals around utah to share our delicious drinks.',
    'imagePath':
        'https://scontent-den4-1.xx.fbcdn.net/v/t1.6435-9/82207061_784027672105084_2523517045606187008_n.jpg?_nc_cat=110&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=z-Ko3Y4C4CkAX-KOK6c&_nc_ht=scontent-den4-1.xx&oh=d6c28c5c385ac0323ae97190a966c292&oe=6139FFA2',
  },
  {
    'title': 'Impacting the world around me',
    'description':
        'One of the joys I have had in my work is seeing how technology and care can impact the world arround us. The last company I worked for I helped to develop a suite of 4 apps to help people who suffer from anxiety, depression, and addiction.',
    'imagePath':
        'https://assets.website-files.com/5fce9c4f2cc6633c9334d9e7/5fff16f039002f373a1ca2bd_Climb%20comp-p-1600.png',
  },
  {
    'title': 'Why me',
    'description':
        'I am a dad and know as well as any out there how hard of work it is to raise a family, I think it is amazing that your company is aiming to help mothers and families with tools and tech that matter. I would love to be a part of your team and have the chance to work on somehting that is making a difference in the world.',
    'imagePath':
        'https://scontent-den4-1.xx.fbcdn.net/v/t1.6435-9/231495974_10221392922067273_4498855273039545691_n.jpg?_nc_cat=104&ccb=1-4&_nc_sid=09cbfe&_nc_ohc=Za2hyEPkcvcAX_ess9L&_nc_ht=scontent-den4-1.xx&oh=7c6483ba106dcfb3284f5227591b5f5f&oe=61373541',
  },
];

class CardInfo {
  String title;
  String imagePath;
  String description;
  CardInfo(this.title, this.description, this.imagePath);

  CardInfo.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        description = json['description'],
        imagePath = json['imagePath'];
}

List<CardInfo> cards = jsonArray.map((e) => CardInfo.fromJson(e)).toList();
