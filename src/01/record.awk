awk '$3 > 0 { print $1, $2 * $3 }' emp.data
awk '$3 == 0 {print $1}' emp.data
awk '$3 == 0' emp.data
awk '{print $1}' emp.data
# awk 'program' input files
awk '$3 == 0 {print $1}' emp.data record.awk
awk '{print}' emp.data
awk '{print $0}' emp.data
awk '{print $1, $3}' emp.data
# NF    nubmer of fields in the current record
# NR    current record number in the total input stream

awk '{print NF, $1, $NF}' emp.data
awk '{print NR, $0}' emp.data
awk '{print "total pay for", $1, "is", $2 * $3 }' emp.data
awk '{printf("total pay for %s is $%.2f\n", $1, $2 * $3) }' emp.data
awk '{printf("%6.2f %s\n",  $2 * $3, $0) }' emp.data | sort -n
awk '$2 >= 5' emp.data
awk '$2 * $3 > 50 {printf("$%.2f for %s\n", $2 * $3, $1) }' emp.data
awk '$1 == "Susie"' emp.data
awk '/Susie/' emp.data
awk '$2 >= 4 || $3 >= 20' emp.data
awk '$2 < 4 && $3 < 20' emp.data
awk '!($2 < 4 && $3 < 20)' emp.data
awk 'BEGIN{print "NAME    RATE    HOURS"; print ""} {print}' emp.data
awk '$3 > 15 {emp = emp + 1} END {print emp, "employees worked more than 15 hours"}' emp.data
awk 'END {print NR, "employees"}' emp.data
awk '{pay = pay + $2 * $3} END { print NR, "employees"; print "total pay is", pay; print "average pay is", pay / NR}' emp.data
awk '$2 > maxrate { maxrate = $2; maxemp = $1} END {print "highest hourly rate:", maxrate, "for", maxemp}' emp.data
awk '{names = names $1 " "} END {print names}' emp.data
awk '{last = $0} END {print last}' emp.data
awk '{print $1, length($1)}' emp.data
awk '{nc = nc + length($0) + 1; nw = nw + NF} END {print NR, "lines,", nw, "words,", nc, "characters"}' emp.data
awk '$2 > 6 {n = n + 1; pay = pay + $2 * $3} END { if (n > 0) print n, "employees, total pay is", pay, "average pay is", pay / n; else print "no employees are paid more than $6/hour"}' emp.data


