# gsub(r,s,t)
BEGIN {
    FS = "\t"
    OFS = "\t"
}
{
    num = gsub("a", "A", $4)
    print num, $0
}
