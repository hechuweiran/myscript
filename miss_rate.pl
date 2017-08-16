#!perl -w 
open (IN,$ARGV[0]) or die "";
$/ = '>';
<IN>;
while(<IN>){
	chomp;
	my ($name,$seq) = split (/\n/,$_);
	$all_seq = length $seq;
	$lu = ($seq =~ tr/[atcg]/[ATCG]/);
	$gers = $lu/$all_seq;
	print "$name\t$gers\n";
		}
close IN;
