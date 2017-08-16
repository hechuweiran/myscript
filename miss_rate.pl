#!perl -w
open (IN,$ARGV[0]) or die "call me ";
$/ = '>';
<IN>;
while(<IN>){
        chomp;
        my ($name,$seq) = split (/\n/,$_);
        $all_seq = length $seq;
        $lu = ($seq =~ tr/[ATCG]/[atcg]/);
        $gers = $lu/$all_seq;
        $result = 1-$gers;
        $result = sprintf("%.4f",$result);
        print "$name\t$result\n";
                }
close IN;
