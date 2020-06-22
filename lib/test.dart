import 'package:flutter/material.dart';
import 'constants.dart' as glo;

void main(){
List helo=[
  {
    "title": "धर्म और अध्यात्म",
    "data": [
      {
        "t": "Ramayan",
        "cat": "धर्म और अध्यात्म",
        "d": "रामायण हर समय का भव्य महाकाव्य, दिग्गज कलाकारों जैसे नसीरुद्दीन शाह (रावण), अनुपम खेर (दशरथ), ओम पूरी (काल), रत्ना पाठक शाह (मंथरा) और जयति भाटिया (कैकेयी) से सजा है। यह संपूर्ण पहल रेडियो श्रोताओं के मन को छूने के लिए तैयार है।",
        "p": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/ramayan+banner.png",
        "pF": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/ho-3.png",
        "pFBig": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/ramayan+player.png",
        "id": "ramayan"
      },
      {
        "t": "Mahabharat",
        "c": "#F9A900",
        "cat": "कहानियां",
        "d": "हम सभी लोग बचपन से महाभारत देख कर बड़े हुए हैं। HT SmartCast एक अलग नजरिया लाया जो आपके महाभारत के यादों को ताज़ा कर देगा। आइये महाभारत के हर पात्र को एक बार फिर से जीते हैं और अपनी संस्कृति को आगे बढ़ाते हैं। यह FEVER FM प्रोडक्शन द्वारा बनाया गया है और बोलकर ऐप आपके समस्त प्रस्तुत कर रहा है।",
        "p": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/radio/mahabharat+banner.png",
        "pF": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/radio/Mahabharat+small.png",
        "pFBig": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/radio/mahabharat+player.png",
        "id": "Mahabharat"
      }
    ]
  },
  {
    "title": "न्यूज़ एंड पॉलिटिक्स",
    "data": [
      {
        "t": "Jansatta Podcast",
        "cat": "समाचार और राजनीति",
        "d": "Jansatta Podcast में आपको मिलेगी सटीक और सही जानकारी। आपसे जुड़े मुद्दों पर बात करेंगे, आपके हित की बात करेंगे। देश, विदेश, खेल, सियासत की हलचल पर रहेगी नजर।",
        "p": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/Jansatta+banner.png",
        "pF": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/ho-13.png",
        "pFBig": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/jansatta+player.png",
        "id": "jansatta-podcast"
      }
    ]
  },
  {
    "title": "शिक्षा और ज्ञान",
    "data": [
      {
        "t": "Jobs Jankari",
        "cat": "शिक्षा और ज्ञान",
        "d": "जॉब्स, एग्जाम और रिजल्ट से जुड़ी ताजा खबरें, उच्च शिक्षा और नौकरी तलाश रहे युवाओं के लिए करियर में अच्छा करने के टिप्स बताएँगे लाइव हिंदुस्तान के चीफ़ कंटेंट क्रिएटर, पंकज विजय।आप सुन रहे हैं एच टी स्मार्टकास्ट और ये है लाइव हिंदुस्तान प्रोडक्शन |",
        "p": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/jabs+jankaari+banner.png",
        "pF": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/ho-7.png",
        "pFBig": "https://d51md7wh0hu8b.cloudfront.net/assets/app/prod/images/banner/jobs+jankaari+player.png",
        "id": "jobs-jankari"
      }
    ]
  },
];

print(helo[0]['data'][0]['t']);
helo[0]['data'].removeAt(0);
print(helo);
}

