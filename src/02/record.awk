awk '$0 > "M"' countries
awk '$1 < $4' countries
awk '$2 < $3' countries
awk '/Asia/' countries
awk '/ Asia /' countries
awk '/ Asia/' countries
awk '/\tAsia/' countries
awk '/r/' countries
awk '$4 ~ /Asia/' countries
awk '$4 !~ /Asia/' countries
# awk '/Asia/' countries is equvalent to awk '$0 ~ /Asia/' countries
# metacharacters
#   \ ^ $ . [ ] | ( ) * + ?
awk '/Canada/, /USA/' countries
awk '/Europe/, /Africa/' countries
awk 'FNR == 1, FNR == 5 {print FILENAME ": " $0}' countries


