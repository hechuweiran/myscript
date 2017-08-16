#!perl -w
open (IN, "grep -v '##' $ARGV[0]|") or die "";
open (OUT,">1.txt") or die "";
<IN>;
while (<IN>){
        chomp;
        @tmp = split (/\s+/,$_);
        $dp = $tmp[7];
        $dp =~ s/AC.*.;DP=//g;
        $dp =~ s/;.*//g;
        print  OUT "$dp\n";
        }
        close IN;
        close OUT;

my %res;
open (INN,"1.txt") or die "";
open (UT,">DP_fre.txt") or die "";
while (<INN>){
chomp;
$res{$_}++;
}
close INN;
foreach (sort keys(%res)){
print UT "$_\t$res{$_}\n";
}
close UT;
