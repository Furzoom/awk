BEGIN {
    FS = OFS = "\t"
}
{
# gsub(r, s) - substitute s for r globally in $0
    num = gsub("Asia", "ASIA")
    print num, $0
}

