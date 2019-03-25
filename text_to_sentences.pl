use strict;
use warnings;
use Data::Dumper qw(Dumper);
use boolean;
use 5.010;
use utf8;
use open ":encoding(utf8)";

sub findSentences{
	my @sentences;
	my $text = shift;
	my $last_ind = 0;
	my $sentence_end = 0;
	my $end = 0;
	my $filename = 'sentences.txt';
	open(my $fh, '>', $filename) or die "Could not open file '$filename' $!";
	while ($text =~ /(?:\A|(?<=\W))(?:(\B[\"\”\“](?!(?<!\s[\"\”\“])[\s\n])(?:[^\"\”\“](?![^\s\"\”\“]*[\.\?\!…][\"\”\“]\W*+(?:[A-ZİÇÖŞÜĞ0-9]|$)))*+(?:(?1)(?:[^\"\”\“](?![^\s\"\”\“]*[\.\?\!…][\"\”\“]\W*+(?:[A-ZİÇÖŞÜĞ0-9]|$)))*+)*+(?=[^\"\”\“]*+[\"\”\“](?![A-ZİÇÖŞÜĞ0-9]))[\"\”\“]?)|[^\w\s]?(?:\p{Lu}|(?:D(?:r|k|o(?:ç|(?=\.)|c)|Z|R|yt|K|a(?:y|n)|e(?:n|r)|ÜŞ|HHS|J|OC|t|vd|z)|P(?:r(?:o(?:f|d))|l(?:c|t|(?=\.))|e(?:n|r)|LT|R(?:O(?:D|F)|(?=\.))|az|o(?:l|z)|te|ER|St|sk|vt)|p(?:r(?:o(?:f|d)|(?=\.))|l(?:c|t)|ic|e(?:n|r)|az|s(?:k|t)|df|vt)|I(?:n(?:c(?:(?=\.)|ç))|I(?:(?=\.)|I)|V|X|CBCT|N(?:C|TEM)|SGSY)|S(?:t(?:(?=\.)|r)|k|N|n|PKn|VN|a(?:n|ğ)|i(?:p|s|t)|T(?:(?=\.)|K)|e(?:n|r|y)|F|f|OK|S|gt|ok|r|s|vn)|L(?:td|T(?:(?=\.)|D)|LC|d)|d(?:o(?:ç|(?=\.))|k|r|t|yt|z)|C(?:o(?:r(?:p(?:(?=\.)|o)|(?=\.))|(?=\.)|s)|d|O|a(?:t|d)|AD|B|D|ie|um)|Y(?:ön|RD|rd|Z(?:(?=\.)|B)|z(?:(?=\.)|b)|a(?:r(?:(?=\.)|d)|t|y)|ÖN|MM|TL|ÜK|ük)|T(?:L|u(?:g|r(?:(?=\.)|z)|ğg|mg)|Ü(?:M(?:(?=\.)|G)|K)|ü(?:m(?:(?=\.)|g)|k)|OP|U(?:G|ĞG|MG|RZ)|op|e(?:k(?:(?=\.)|ns)|l|m)|NK|V|a(?:ah|r|ş)|nk|MSF|ic|B|GSAS|Tem)|v(?:b|s|d|lk|ol)|s(?:k|n|pkn|vn|t(?:(?=\.)|k)|f|r|s)|t(?:l|u(?:g|ğg|mg|rz)|nk|v|ff|ic|msf|ümg|b|ekns)|K(?:u(?:r|v|yum)|U(?:R|V)|O(?:MD|NT|OP|RG)|d(?:(?=\.)|m|z)|o(?:md|nt|op|rg)|ı(?:d|y)|K(?:(?=\.)|DF)|M|m|v|İŞ|DM|R|eyCorp|ln|r|zn)|c(?:o(?:rp|(?=\.)|s)|a(?:t|d)|b|d|m|um)|A(?:V(?:(?=\.)|M)|l(?:b|m|t)|s(?:b|(?=\.)|sn|t)|v|LB|BD|S(?:(?=\.)|YAB|T)|r(?:m|(?=\.)|ş)|m(?:(?=\.)|ç)|p(?:p|t)|Ş|ş|PT|ck|km|ğu)|H(?:V|z|v|i(?:z(?:(?=\.)|m)|s)|a(?:c|k|st|y|z)|İZM|Z|rt)|M(?:h|d|a(?:l(?:(?=\.)|z)|d|h|y)|T|t|u(?:(?=\.)|h)|r(?:(?=\.)|k|s)|E(?:GAP|M)|U|Ü(?:H|D)|A(?:H|LZ)|L(?:(?=\.)|Y)|W|e(?:c|m)|i(?:l|n)|ü(?:d|h)|CTAS|HK|I|NDRS|V|knz|ly|v)|O(?:r(?:g|t|d|(?=\.))|p(?:(?=\.)|r)|n(?:b|c)|NB|TM|d|to)|B(?:K(?:Z|(?=\.)|M)|L(?:D|V)|k(?:z|(?=\.)|m)|Ş(?:K|B)|şk|l(?:d|v)|a(?:ş(?:(?=\.)|k))|DDK|G|OSSA|ULV|es|hd|ulv|ÇVŞ|ÜY|çvş|öl|üy)|y(?:rd|z(?:(?=\.)|b)|y|mm)|o(?:r(?:g|d|t)|n(?:b|c)|d|pr|tm)|m(?:d|m|t|r(?:(?=\.)|s)|a(?:h|lz)|h(?:(?=\.)|k)|uh|w|knz|l|p|üd)|b(?:k(?:z|(?=\.)|m)|l(?:d|v)|p|ş(?:k|b)|aşk|ddk|g|hd|ulv|çvş)|İ(?:n(?:ş|g|c)|S(?:(?=\.)|TH)|s(?:t(?:(?=\.)|h)|(?=\.))|HB|KM|hb|km|şl)|G(?:İB|nkur|e(?:n|t)|EN|AYR|B|DP|G|ID|SGM|YO|ZT|ayr|rv|ör|ıd)|k(?:m|d|o(?:op|rg)|g|uv|iş|v|arş|k|r|zn)|i(?:n(?:ş|g|c|ç)|s(?:t(?:h|(?=\.)))|cbct|hb|k(?:m|sv)|şl)|X(?:I(?:I(?:(?=\.)|I)|(?=\.)|V|X)|V(?:I(?:I(?:(?=\.)|I)|(?=\.))|(?=\.))|X(?:I(?:I(?:(?=\.)|I)|(?=\.))|(?=\.))|Co)|a(?:s(?:b|t)|l(?:m|d)|bd|vm|pt|rş)|E(?:k|s|m(?:(?=\.)|n)|ĞT|ğt|GLYO|MN|RG|cz|d|ln|nd|r|yl)|h(?:v|izm|k|rt|z)|Ü(?:n(?:i(?:(?=\.)|v)|v)|N(?:İ(?:(?=\.)|V))|TĞM|tğm|ÇVŞ|çvş)|V(?:I(?:I(?:(?=\.)|I)|(?=\.))|S|d|lk|ol)|R(?:e(?:v|k)|d|h|u)|W(?:WW|r)|w(?:ww|r)|F(?:r|T|eat|t|AK|X|ak|iy|l)|r(?:ev|d|h)|U(?:z(?:(?=\.)|m)|ÇK|çk|YII|ZN|lş)|g(?:nkur|r(?:(?=\.)|v)|ayr|b|g|zt)|N(?:a(?:k(?:(?=\.)|l))|O|o|BA|is|m|u)|J(?:r|AN|an|oh)|ü(?:n(?:i(?:(?=\.)|v)|v)|tğm|çvş)|Ş(?:ti|a(?:m(?:(?=\.)|p))|B|Tİ|b|ht)|f(?:r|eat|t|l|x)|jr|l(?:t(?:(?=\.)|d)|l(?:(?=\.)|c)|d)|u(?:z(?:m|n)|çk|lş)|ş(?:ti|b)|Ç(?:ek|VŞ|vş)|e(?:cz|ln|rg)|n(?:o|m)|Z(?:OREN|h)|xii|zh|Öğr|çvş|öğr))(\.+)|(?<![0-9][\.\,])((?:%|\byüzde|\bbin)\s?[0-9]++\.(?![0-9]))?+(?(3)|[^0-9\s]*+\b[0-9]++(?:[\.\,][0-9]++(?=\W[0-9]))*+)|(?:(?=\.)|[^\s\.\?\!…]++)(?:(\.(?:[a-zA-Z@\/]+\.)*(?:C(?:O(?:M|\b)|om)|a(?:s(?:p(?:x|\b))|z)|A(?:S(?:P(?:X|\b)))|c(?:o(?:m|\b))|N(?:ET|et)|T(?:R|V)|t(?:r|v)|n(?:e(?:t|ws))|e(?:du|u)|g(?:ov|l)|E(?:DU|U)|H(?:T(?:M(?:L|\b)))|LY|ly|org|GOV|h(?:t(?:m(?:l|\b)))|ORG|p(?:hp|df)|PHP|U(?:A|S)|u(?:a|s)|fr|int|D(?:E|O)|FR|K(?:G|Z)|d(?:e|o)|k(?:g|z)|r(?:e|u)|RU)\b)([\.\?\!…]++)?+|((?:\.|(?<!\()(?:\?(?!\w+\=)|\!)|…)[\.\?\!…]*+))[\"\”\'\)]*+)/sgu){
		if ($-[3]){
			$sentence_end = $+[3];
			$end = 1;
		}				
		elsif ($-[6]){
			$end = 1;
			$sentence_end = $+[6];
		}
		elsif ($-[5]){
			$end = 1;
			$sentence_end = $+[5];
		}
		if ($end eq 1){
			my $sentence  = substr $text, $last_ind, ($sentence_end-$last_ind);   
			push @sentences, $sentence;
			$last_ind = $sentence_end;
			$end = 0;
		}
	}
	if ($last_ind ne (length($text)-1)){
		my $sentence  = substr $text, $last_ind, (length($text)-1-$last_ind);   
		push @sentences, $sentence;
	}
	print $fh "<sentences>\n";
	for my $item ( @sentences )  {
		print $fh ("   <item>" . $item . "</item>\n");
	}
	print $fh "</sentences>";
	close $fh;
}

my $filename = 'text.txt';
my $text = "";
if (open(my $fh, '<:encoding(UTF-8)', $filename)) {
  while (my $row = <$fh>) {
    chomp $row;
    $text = $text . $row . "\n";
  }
} else {
  warn "Could not open file '$filename' $!";
}

findSentences($text);
