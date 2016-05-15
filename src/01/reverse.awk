# reverse - printf input in reverse order by line
# usage: awk -f reverse emp.data

{ line[NR] = $0 } # remember each input line
END {
    i = NR
    while (i > 0) {
        print line[i]
        i = i - 1
    }
}
