<?php

function split_sentences($pattern, $input){
    
    preg_match_all($pattern, $input, $matches, PREG_OFFSET_CAPTURE);

    $sentences = array();
    
    $fr = 0;
    $to = 0;
    $add = false;
    
    for ($x = 0; $x < count($matches[0]); $x++) {
        if (!empty($matches[3][$x][0])){
            $to = $matches[3][$x][1] + strlen($matches[3][$x][0]);
            $add = true;
        }
        elseif (!empty($matches[5][$x][0])) {
            $to = $matches[5][$x][1] + strlen($matches[5][$x][0]);
            $add = true;
        }
        if ($add){
            array_push($sentences, substr($input, $fr, $to-$fr));
            $fr = $to;
            $add = false;
        }
    }
    
    if ($fr < strlen($input)){
        array_push($sentences, substr($input, $fr));
    }
    
    return $sentences;
}

$pattern = "/(?:(?<=\W)|\A)(?>(\B(?>[\"”“]|['‘]++(?![^'’]*?\b\p{Ll}\w*+['’]\b))(?!(?<!\s[\"”“'‘])\s)(?:(?>[^\"”“'’‘]|\b['’]\b)(?!(?>[^\s\"”“'’‘]|\b['’]\b)*?[.?!…][\"”“'’‘]++\W*+(?>[\p{Lu}\d]|$)))*+(?:(?1)(?:(?>[^\"”“'’‘]|\b['’]\b)(?!(?>[^\s\"”“'’‘]|\b['’]\b)*?[.?!…][\"”“'’‘]++\W*+(?>[\p{Lu}\d]|$)))*+)*+(?=(?>[^\"”“'’‘]|\b['’]\b)*+(?>[\"”“]|\'{2}+|['’‘]\B)(?![\p{Lu}\d]))(?>[\"”“]|\'{2}+|['’‘]\B)?)|[^\w\s]?+(?:\p{Lu}|(?>D(?>r|k|o(?>ç|\b|c)|Z|R|yt|K|a(?>y|n)|e(?>n|r)|ÜŞ|HHS|J|OC|t|vd|z)|P(?>r(?>o(?>f|d))|l(?>c|t|\b)|e(?>n|r)|LT|R(?>O(?>D|F)|\b)|az|o(?>l|z)|te|ER|St|sk|vt)|p(?>r(?>o(?>f|d)|\b)|l(?>c|t)|ic|e(?>n|r)|az|s(?>k|t)|df|vt)|I(?>n(?>c(?>\b|ç))|I(?>\b|I)|V|X|CBCT|N(?>C|TEM)|SGSY)|S(?>t(?>\b|r)|k|N|n|PKn|VN|a(?>n|ğ)|i(?>p|s|t)|T(?>\b|K)|e(?>n|r|y)|F|f|OK|S|gt|ok|r|s|vn)|L(?>td|T(?>\b|D)|LC|d)|d(?>o(?>ç|\b)|k|r|t|yt|z)|C(?>o(?>r(?>p(?>\b|o)|\b)|\b|s)|d|O|a(?>t|d)|AD|B|D|ie|um)|Y(?>ön|RD|rd|Z(?>\b|B)|z(?>\b|b)|a(?>r(?>\b|d)|t|y)|ÖN|MM|TL|ÜK|ük)|T(?>L|u(?>g|r(?>\b|z)|ğg|mg)|Ü(?>M(?>\b|G)|K)|ü(?>m(?>\b|g)|k)|OP|U(?>G|ĞG|MG|RZ)|op|e(?>k(?>\b|ns)|l|m)|NK|V|a(?>ah|r|ş)|nk|MSF|ic|B|GSAS|Tem)|v(?>b|s|d|lk|ol)|s(?>k|n|pkn|vn|t(?>\b|k)|f|r|s)|t(?>l|u(?>g|ğg|mg|rz)|nk|v|ff|ic|msf|ümg|b|ekns)|K(?>u(?>r|v|yum)|U(?>R|V)|O(?>MD|NT|OP|RG)|d(?>\b|m|z)|o(?>md|nt|op|rg)|ı(?>d|y)|K(?>\b|DF)|M|m|v|İŞ|DM|R|eyCorp|ln|r|zn)|c(?>o(?>rp|\b|s)|a(?>t|d)|b|d|m|um)|A(?>V(?>\b|M)|l(?>b|m|t)|s(?>b|\b|sn|t)|v|LB|BD|S(?>\b|YAB|T)|r(?>m|\b|ş)|m(?>\b|ç)|p(?>p|t)|Ş|ş|PT|ck|km|ğu)|H(?>V|z|v|i(?>z(?>\b|m)|s)|a(?>c|k|st|y|z)|İZM|Z|rt)|M(?>h|d|a(?>l(?>\b|z)|d|h|y)|T|t|u(?>\b|h)|r(?>\b|k|s)|E(?>GAP|M)|U|Ü(?>H|D)|A(?>H|LZ)|L(?>\b|Y)|W|e(?>c|m)|i(?>l|n)|ü(?>d|h)|CTAS|HK|I|NDRS|V|knz|ly|v)|O(?>r(?>g|t|d|\b)|p(?>\b|r)|n(?>b|c)|NB|TM|d|to)|B(?>K(?>Z|\b|M)|L(?>D|V)|k(?>z|\b|m)|Ş(?>K|B)|şk|l(?>d|v)|a(?>ş(?>\b|k))|DDK|G|OSSA|ULV|es|hd|ulv|ÇVŞ|ÜY|çvş|öl|üy)|y(?>rd|z(?>\b|b)|y|mm)|o(?>r(?>g|d|t)|n(?>b|c)|d|pr|tm)|m(?>d|m|t|r(?>\b|s)|a(?>h|lz)|h(?>\b|k)|uh|w|knz|l|p|üd)|b(?>k(?>z|\b|m)|l(?>d|v)|p|ş(?>k|b)|aşk|ddk|g|hd|ulv|çvş)|İ(?>n(?>ş|g|c)|S(?>\b|TH)|s(?>t(?>\b|h)|\b)|HB|KM|hb|km|şl)|G(?>İB|nkur|e(?>n|t)|EN|AYR|B|DP|G|ID|SGM|YO|ZT|ayr|rv|ör|ıd)|k(?>m|d|o(?>op|rg)|g|uv|iş|v|arş|k|r|zn)|i(?>n(?>ş|g|c|ç)|s(?>t(?>h|\b))|cbct|hb|k(?>m|sv)|şl)|X(?>I(?>I(?>\b|I)|\b|V|X)|V(?>I(?>I(?>\b|I)|\b)|\b)|X(?>I(?>I(?>\b|I)|\b)|\b)|Co)|a(?>s(?>b|t)|l(?>m|d)|bd|vm|pt|rş)|E(?>k|s|m(?>\b|n)|ĞT|ğt|GLYO|MN|RG|cz|d|ln|nd|r|yl)|h(?>v|izm|k|rt|z)|Ü(?>n(?>i(?>\b|v)|v)|N(?>İ(?>\b|V))|TĞM|tğm|ÇVŞ|çvş)|V(?>I(?>I(?>\b|I)|\b)|S|d|lk|ol)|R(?>e(?>v|k)|d|h|u)|W(?>WW|r)|w(?>ww|r)|F(?>r|T|eat|t|AK|X|ak|iy|l)|r(?>ev|d|h)|U(?>z(?>\b|m)|ÇK|çk|YII|ZN|lş)|g(?>nkur|r(?>\b|v)|ayr|b|g|zt)|N(?>a(?>k(?>\b|l))|O|o|BA|is|m|u)|J(?>r|AN|an|oh)|ü(?>n(?>i(?>\b|v)|v)|tğm|çvş)|Ş(?>ti|a(?>m(?>\b|p))|B|Tİ|b|ht)|f(?>r|eat|t|l|x)|jr|l(?>t(?>\b|d)|l(?>\b|c)|d)|u(?>z(?>m|n)|çk|lş)|ş(?>ti|b)|Ç(?>ek|VŞ|vş)|e(?>cz|ln|rg)|n(?>o|m)|Z(?>OREN|h)|xii|zh|Öğr|çvş|öğr))(\.++)(?:\'\b)?+|(?<![0-9][.,])((?:%|\byüzde|\bbin)\s?+[0-9]++\.(?![0-9]))?+(?(3)|[^0-9\s]*+\b[0-9]++(?:[.,][0-9]++(?=\W[0-9]))*+)|(?:(?=\.)|[^\s.?!…]++)(?:(\.(?:[a-zA-Z@\/]+\.)*(?>C(?>O(?>M|\b)|om)|a(?>s(?>p(?>x|\b))|z)|A(?>S(?>P(?>X|\b)))|c(?>o(?>m|\b))|N(?>ET|et)|T(?>R|V)|t(?>r|v)|n(?>e(?>t|ws))|e(?>du|u)|g(?>ov|l)|E(?>DU|U)|H(?>T(?>M(?>L|\b)))|LY|ly|org|GOV|h(?>t(?>m(?>l|\b)))|ORG|p(?>hp|df)|PHP|U(?>A|S)|u(?>a|s)|fr|int|D(?>E|O)|FR|K(?>G|Z)|d(?>e|o)|k(?>g|z)|r(?>e|u)|RU)\b)?+(?(4)|((?(4)[.?!…]\B|(?:(?:\.|(?<!\()(?:\?(?!\w++\=)|\!)|…)[.?!…]*+[“\"”'’‘)]*+))))))/us";

$input = "Bordo’nun St. Emilion kasabasında, bölgenin yeni rekolte şaraplarını tattığımız seans başlamadan önce, tarihi şatonun salonundaki sertifikalara bakıyorduk. Çoğu 19. yüzyıldan kalma süslü ödül beratlarıydı. Uzun boylu, kır saçlı yaşlı adam üslûbundan tanıdığı bir İngiliz çizerin minicik imzasını birinde görünce, çocuklar gibi sevindi. Eski resimlerde bol bol çıplak melek çizilmiş olduğu da dikkatinden kaçmıyordu. Muzip bir tonda, \"Nedense hep melekler çıplak, erkek figürler ise giyinik…\" dedi. Yeni baktığımız birinde bu defa poposu çıplak bir erkek figürü görünce de, \"Neyse, istisnalar da varmış canım!\" diye kahkahayı bastı.";

print_r(split_sentences($pattern, $input));

?>
