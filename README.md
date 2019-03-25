# SplitExp

> SplitExp is a rule based program that detects sentence boundaries in Turkish Texts by using regular expressions. 

**The Regular Expression of SplitExp**

```regex
(?:\A|(?<=\W))(?:(\B[\"\”\“](?!(?<!\s[\"\”\“])\s)(?:[^\"\”\“](?![^\s\"\”\“]*[\.\?\!…][\"\”\“]\W*+(?:[A-ZİÇÖŞÜĞ0-9]|$)))*+(?:(?1)(?:[^\"\”\“](?![^\s\"\”\“]*[\.\?\!…][\"\”\“]\W*+(?:[A-ZİÇÖŞÜĞ0-9]|$)))*+)*+(?=[^\"\”\“]*+[\"\”\“](?![A-ZİÇÖŞÜĞ0-9]))[\"\”\“]?)|[^\w\s]?(?:\p{Lu}|(?:D(?:r|k|o(?:ç|(?=\.)|c)|Z|R|yt|K|a(?:y|n)|e(?:n|r)|ÜŞ|HHS|J|OC|t|vd|z)|P(?:r(?:o(?:f|d))|l(?:c|t|(?=\.))|e(?:n|r)|LT|R(?:O(?:D|F)|(?=\.))|az|o(?:l|z)|te|ER|St|sk|vt)|p(?:r(?:o(?:f|d)|(?=\.))|l(?:c|t)|ic|e(?:n|r)|az|s(?:k|t)|df|vt)|I(?:n(?:c(?:(?=\.)|ç))|I(?:(?=\.)|I)|V|X|CBCT|N(?:C|TEM)|SGSY)|S(?:t(?:(?=\.)|r)|k|N|n|PKn|VN|a(?:n|ğ)|i(?:p|s|t)|T(?:(?=\.)|K)|e(?:n|r|y)|F|f|OK|S|gt|ok|r|s|vn)|L(?:td|T(?:(?=\.)|D)|LC|d)|d(?:o(?:ç|(?=\.))|k|r|t|yt|z)|C(?:o(?:r(?:p(?:(?=\.)|o)|(?=\.))|(?=\.)|s)|d|O|a(?:t|d)|AD|B|D|ie|um)|Y(?:ön|RD|rd|Z(?:(?=\.)|B)|z(?:(?=\.)|b)|a(?:r(?:(?=\.)|d)|t|y)|ÖN|MM|TL|ÜK|ük)|T(?:L|u(?:g|r(?:(?=\.)|z)|ğg|mg)|Ü(?:M(?:(?=\.)|G)|K)|ü(?:m(?:(?=\.)|g)|k)|OP|U(?:G|ĞG|MG|RZ)|op|e(?:k(?:(?=\.)|ns)|l|m)|NK|V|a(?:ah|r|ş)|nk|MSF|ic|B|GSAS|Tem)|v(?:b|s|d|lk|ol)|s(?:k|n|pkn|vn|t(?:(?=\.)|k)|f|r|s)|t(?:l|u(?:g|ğg|mg|rz)|nk|v|ff|ic|msf|ümg|b|ekns)|K(?:u(?:r|v|yum)|U(?:R|V)|O(?:MD|NT|OP|RG)|d(?:(?=\.)|m|z)|o(?:md|nt|op|rg)|ı(?:d|y)|K(?:(?=\.)|DF)|M|m|v|İŞ|DM|R|eyCorp|ln|r|zn)|c(?:o(?:rp|(?=\.)|s)|a(?:t|d)|b|d|m|um)|A(?:V(?:(?=\.)|M)|l(?:b|m|t)|s(?:b|(?=\.)|sn|t)|v|LB|BD|S(?:(?=\.)|YAB|T)|r(?:m|(?=\.)|ş)|m(?:(?=\.)|ç)|p(?:p|t)|Ş|ş|PT|ck|km|ğu)|H(?:V|z|v|i(?:z(?:(?=\.)|m)|s)|a(?:c|k|st|y|z)|İZM|Z|rt)|M(?:h|d|a(?:l(?:(?=\.)|z)|d|h|y)|T|t|u(?:(?=\.)|h)|r(?:(?=\.)|k|s)|E(?:GAP|M)|U|Ü(?:H|D)|A(?:H|LZ)|L(?:(?=\.)|Y)|W|e(?:c|m)|i(?:l|n)|ü(?:d|h)|CTAS|HK|I|NDRS|V|knz|ly|v)|O(?:r(?:g|t|d|(?=\.))|p(?:(?=\.)|r)|n(?:b|c)|NB|TM|d|to)|B(?:K(?:Z|(?=\.)|M)|L(?:D|V)|k(?:z|(?=\.)|m)|Ş(?:K|B)|şk|l(?:d|v)|a(?:ş(?:(?=\.)|k))|DDK|G|OSSA|ULV|es|hd|ulv|ÇVŞ|ÜY|çvş|öl|üy)|y(?:rd|z(?:(?=\.)|b)|y|mm)|o(?:r(?:g|d|t)|n(?:b|c)|d|pr|tm)|m(?:d|m|t|r(?:(?=\.)|s)|a(?:h|lz)|h(?:(?=\.)|k)|uh|w|knz|l|p|üd)|b(?:k(?:z|(?=\.)|m)|l(?:d|v)|p|ş(?:k|b)|aşk|ddk|g|hd|ulv|çvş)|İ(?:n(?:ş|g|c)|S(?:(?=\.)|TH)|s(?:t(?:(?=\.)|h)|(?=\.))|HB|KM|hb|km|şl)|G(?:İB|nkur|e(?:n|t)|EN|AYR|B|DP|G|ID|SGM|YO|ZT|ayr|rv|ör|ıd)|k(?:m|d|o(?:op|rg)|g|uv|iş|v|arş|k|r|zn)|i(?:n(?:ş|g|c|ç)|s(?:t(?:h|(?=\.)))|cbct|hb|k(?:m|sv)|şl)|X(?:I(?:I(?:(?=\.)|I)|(?=\.)|V|X)|V(?:I(?:I(?:(?=\.)|I)|(?=\.))|(?=\.))|X(?:I(?:I(?:(?=\.)|I)|(?=\.))|(?=\.))|Co)|a(?:s(?:b|t)|l(?:m|d)|bd|vm|pt|rş)|E(?:k|s|m(?:(?=\.)|n)|ĞT|ğt|GLYO|MN|RG|cz|d|ln|nd|r|yl)|h(?:v|izm|k|rt|z)|Ü(?:n(?:i(?:(?=\.)|v)|v)|N(?:İ(?:(?=\.)|V))|TĞM|tğm|ÇVŞ|çvş)|V(?:I(?:I(?:(?=\.)|I)|(?=\.))|S|d|lk|ol)|R(?:e(?:v|k)|d|h|u)|W(?:WW|r)|w(?:ww|r)|F(?:r|T|eat|t|AK|X|ak|iy|l)|r(?:ev|d|h)|U(?:z(?:(?=\.)|m)|ÇK|çk|YII|ZN|lş)|g(?:nkur|r(?:(?=\.)|v)|ayr|b|g|zt)|N(?:a(?:k(?:(?=\.)|l))|O|o|BA|is|m|u)|J(?:r|AN|an|oh)|ü(?:n(?:i(?:(?=\.)|v)|v)|tğm|çvş)|Ş(?:ti|a(?:m(?:(?=\.)|p))|B|Tİ|b|ht)|f(?:r|eat|t|l|x)|jr|l(?:t(?:(?=\.)|d)|l(?:(?=\.)|c)|d)|u(?:z(?:m|n)|çk|lş)|ş(?:ti|b)|Ç(?:ek|VŞ|vş)|e(?:cz|ln|rg)|n(?:o|m)|Z(?:OREN|h)|xii|zh|Öğr|çvş|öğr))(\.++)|(?<![0-9][\.\,])((?:%|\byüzde|\bbin)\s?[0-9]++\.(?![0-9]))?+(?(3)|[^0-9\s]*+\b[0-9]++(?:[\.\,][0-9]++(?=\W[0-9]))*+)|(?:(?=\.)|[^\s\.\?\!…]++)(?:(\.(?:[a-zA-Z@\/]+\.)*(?:C(?:O(?:M|\b)|om)|a(?:s(?:p(?:x|\b))|z)|A(?:S(?:P(?:X|\b)))|c(?:o(?:m|\b))|N(?:ET|et)|T(?:R|V)|t(?:r|v)|n(?:e(?:t|ws))|e(?:du|u)|g(?:ov|l)|E(?:DU|U)|H(?:T(?:M(?:L|\b)))|LY|ly|org|GOV|h(?:t(?:m(?:l|\b)))|ORG|p(?:hp|df)|PHP|U(?:A|S)|u(?:a|s)|fr|int|D(?:E|O)|FR|K(?:G|Z)|d(?:e|o)|k(?:g|z)|r(?:e|u)|RU)\b)?+((?(4)[\.\?\!…]++\B|(?:(?:\.|(?<!\()(?:\?(?!\w++\=)|\!)|…)[\.\?\!…]*+))))[\"\”\'\)]*+)
```

## Installation

- Use the "text_to_sentences.pl" script to split your "text.txt" file into sentences and store them in "sentences.txt". Your "text.txt" and "text_to_sentences.pl" files should be in the same folder. You can run the program as:

```shell
$ perl text_to_sentences.pl
```

### Clone

- Clone this repo to your local machine using `https://github.com/ideateknoloji/SplitExp.git`

### Setup

- The regular expression is made for Turkish texts. It uses extension and abbreviation dictionaries in Trie format. You can extend these dictionaries and adapt them to the code to get more accurate sentence boundary detection. The dictionaries in the regular expression is as follows:

#### Abbreviations 

```regex
(?:\p{Lu}|(?:D(?:r|k|o(?:ç|(?=\.)|c)|Z|R|yt|K|a(?:y|n)|e(?:n|r)|ÜŞ|HHS|J|OC|t|vd|z)|P(?:r(?:o(?:f|d))|l(?:c|t|(?=\.))|e(?:n|r)|LT|R(?:O(?:D|F)|(?=\.))|az|o(?:l|z)|te|ER|St|sk|vt)|p(?:r(?:o(?:f|d)|(?=\.))|l(?:c|t)|ic|e(?:n|r)|az|s(?:k|t)|df|vt)|I(?:n(?:c(?:(?=\.)|ç))|I(?:(?=\.)|I)|V|X|CBCT|N(?:C|TEM)|SGSY)|S(?:t(?:(?=\.)|r)|k|N|n|PKn|VN|a(?:n|ğ)|i(?:p|s|t)|T(?:(?=\.)|K)|e(?:n|r|y)|F|f|OK|S|gt|ok|r|s|vn)|L(?:td|T(?:(?=\.)|D)|LC|d)|d(?:o(?:ç|(?=\.))|k|r|t|yt|z)|C(?:o(?:r(?:p(?:(?=\.)|o)|(?=\.))|(?=\.)|s)|d|O|a(?:t|d)|AD|B|D|ie|um)|Y(?:ön|RD|rd|Z(?:(?=\.)|B)|z(?:(?=\.)|b)|a(?:r(?:(?=\.)|d)|t|y)|ÖN|MM|TL|ÜK|ük)|T(?:L|u(?:g|r(?:(?=\.)|z)|ğg|mg)|Ü(?:M(?:(?=\.)|G)|K)|ü(?:m(?:(?=\.)|g)|k)|OP|U(?:G|ĞG|MG|RZ)|op|e(?:k(?:(?=\.)|ns)|l|m)|NK|V|a(?:ah|r|ş)|nk|MSF|ic|B|GSAS|Tem)|v(?:b|s|d|lk|ol)|s(?:k|n|pkn|vn|t(?:(?=\.)|k)|f|r|s)|t(?:l|u(?:g|ğg|mg|rz)|nk|v|ff|ic|msf|ümg|b|ekns)|K(?:u(?:r|v|yum)|U(?:R|V)|O(?:MD|NT|OP|RG)|d(?:(?=\.)|m|z)|o(?:md|nt|op|rg)|ı(?:d|y)|K(?:(?=\.)|DF)|M|m|v|İŞ|DM|R|eyCorp|ln|r|zn)|c(?:o(?:rp|(?=\.)|s)|a(?:t|d)|b|d|m|um)|A(?:V(?:(?=\.)|M)|l(?:b|m|t)|s(?:b|(?=\.)|sn|t)|v|LB|BD|S(?:(?=\.)|YAB|T)|r(?:m|(?=\.)|ş)|m(?:(?=\.)|ç)|p(?:p|t)|Ş|ş|PT|ck|km|ğu)|H(?:V|z|v|i(?:z(?:(?=\.)|m)|s)|a(?:c|k|st|y|z)|İZM|Z|rt)|M(?:h|d|a(?:l(?:(?=\.)|z)|d|h|y)|T|t|u(?:(?=\.)|h)|r(?:(?=\.)|k|s)|E(?:GAP|M)|U|Ü(?:H|D)|A(?:H|LZ)|L(?:(?=\.)|Y)|W|e(?:c|m)|i(?:l|n)|ü(?:d|h)|CTAS|HK|I|NDRS|V|knz|ly|v)|O(?:r(?:g|t|d|(?=\.))|p(?:(?=\.)|r)|n(?:b|c)|NB|TM|d|to)|B(?:K(?:Z|(?=\.)|M)|L(?:D|V)|k(?:z|(?=\.)|m)|Ş(?:K|B)|şk|l(?:d|v)|a(?:ş(?:(?=\.)|k))|DDK|G|OSSA|ULV|es|hd|ulv|ÇVŞ|ÜY|çvş|öl|üy)|y(?:rd|z(?:(?=\.)|b)|y|mm)|o(?:r(?:g|d|t)|n(?:b|c)|d|pr|tm)|m(?:d|m|t|r(?:(?=\.)|s)|a(?:h|lz)|h(?:(?=\.)|k)|uh|w|knz|l|p|üd)|b(?:k(?:z|(?=\.)|m)|l(?:d|v)|p|ş(?:k|b)|aşk|ddk|g|hd|ulv|çvş)|İ(?:n(?:ş|g|c)|S(?:(?=\.)|TH)|s(?:t(?:(?=\.)|h)|(?=\.))|HB|KM|hb|km|şl)|G(?:İB|nkur|e(?:n|t)|EN|AYR|B|DP|G|ID|SGM|YO|ZT|ayr|rv|ör|ıd)|k(?:m|d|o(?:op|rg)|g|uv|iş|v|arş|k|r|zn)|i(?:n(?:ş|g|c|ç)|s(?:t(?:h|(?=\.)))|cbct|hb|k(?:m|sv)|şl)|X(?:I(?:I(?:(?=\.)|I)|(?=\.)|V|X)|V(?:I(?:I(?:(?=\.)|I)|(?=\.))|(?=\.))|X(?:I(?:I(?:(?=\.)|I)|(?=\.))|(?=\.))|Co)|a(?:s(?:b|t)|l(?:m|d)|bd|vm|pt|rş)|E(?:k|s|m(?:(?=\.)|n)|ĞT|ğt|GLYO|MN|RG|cz|d|ln|nd|r|yl)|h(?:v|izm|k|rt|z)|Ü(?:n(?:i(?:(?=\.)|v)|v)|N(?:İ(?:(?=\.)|V))|TĞM|tğm|ÇVŞ|çvş)|V(?:I(?:I(?:(?=\.)|I)|(?=\.))|S|d|lk|ol)|R(?:e(?:v|k)|d|h|u)|W(?:WW|r)|w(?:ww|r)|F(?:r|T|eat|t|AK|X|ak|iy|l)|r(?:ev|d|h)|U(?:z(?:(?=\.)|m)|ÇK|çk|YII|ZN|lş)|g(?:nkur|r(?:(?=\.)|v)|ayr|b|g|zt)|N(?:a(?:k(?:(?=\.)|l))|O|o|BA|is|m|u)|J(?:r|AN|an|oh)|ü(?:n(?:i(?:(?=\.)|v)|v)|tğm|çvş)|Ş(?:ti|a(?:m(?:(?=\.)|p))|B|Tİ|b|ht)|f(?:r|eat|t|l|x)|jr|l(?:t(?:(?=\.)|d)|l(?:(?=\.)|c)|d)|u(?:z(?:m|n)|çk|lş)|ş(?:ti|b)|Ç(?:ek|VŞ|vş)|e(?:cz|ln|rg)|n(?:o|m)|Z(?:OREN|h)|xii|zh|Öğr|çvş|öğr))
```
#### Extensions

```regex
(?:C(?:O(?:M|\b)|om)|a(?:s(?:p(?:x|\b))|z)|A(?:S(?:P(?:X|\b)))|c(?:o(?:m|\b))|N(?:ET|et)|T(?:R|V)|t(?:r|v)|n(?:e(?:t|ws))|e(?:du|u)|g(?:ov|l)|E(?:DU|U)|H(?:T(?:M(?:L|\b)))|LY|ly|org|GOV|h(?:t(?:m(?:l|\b)))|ORG|p(?:hp|df)|PHP|U(?:A|S)|u(?:a|s)|fr|int|D(?:E|O)|FR|K(?:G|Z)|d(?:e|o)|k(?:g|z)|r(?:e|u)|RU)
```
---

## Contributing

> To get started...

### Step 1

- **Option 1**
    - 🍴 Fork this repo!

- **Option 2**
    - 👯 Clone this repo to your local machine using `https://github.com/ideateknoloji/SplitExp.git`

### Step 2

- **HACK AWAY!** 🔨🔨🔨

### Step 3

- 🔃 Create a new pull request using <a href="https://github.com/ideateknoloji/SplitExp" target="_blank">`https://github.com/ideateknoloji/SplitExp`</a>.

---

## Contributors/People
| <a href="http://fvcproductions.com" target="_blank">**Özge Dinçsoy**</a> | <a href="http://fvcproductions.com" target="_blank">**Can Özbey**</a> |
| :---: |:---:|
| [![Özge Dinçsoy](https://avatars1.githubusercontent.com/u/4284691?v=3&s=200)](http://fvcproductions.com)    | [![Can Özbey](https://avatars1.githubusercontent.com/u/4284691?v=3&s=200)](http://fvcproductions.com) |
| <a href="https://github.com/ozgedincsoy" target="_blank">`github.com/ozgedincsoy`</a> | <a href="https://github.com/canozbey" target="_blank">`github.com/canozbey`</a>

- You should probably resize their picture using `?s=200` at the end of the image URL.

---

## Support

Reach out to us at one of the following places!

- Website at <a href="http://ideateknoloji.com.tr/" target="_blank">`ideateknoloji.com.tr`</a>
- LinkedIn at <a href="https://www.linkedin.com/company/idea-technology-solutions/" target="_blank">`idea-technology-solutions`</a>
- Insert more social links here.

---
