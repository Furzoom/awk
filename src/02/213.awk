BEGIN {
    FS = OFS = "\t"
}
{
    print index($0, "a"), length($4), $0
}
