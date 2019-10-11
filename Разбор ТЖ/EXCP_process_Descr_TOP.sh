cat rphost*/*.log |
perl -n -e 'if (/^\d\d:\d\d\.\d+/) {$event =~ s/.\n/<line>/g; print $event."\n"; $event = "";} $event .= $_; END{print $event};' |
perl -pe 's/\xef\xbb\xbf//g' |
grep -P ',EXCP,.*,Descr=' |
sed -r 's/^.*,process=//;s/,OSThread.*,Descr=/=/' |
gawk -F',' '{Dur[$0]+=1;}END{for (i in Dur) print Dur[i] ":" i}' |
sort -rnb |
sed 's/<line>/\n/g'