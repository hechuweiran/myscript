#!perl -w
my %infor=() ;
open (IN,$ARGV[0]) or die "";
while (<IN>){
	chomp;
	@tmp = split (/\s+/,$_);
	$name = $tmp[0];
	if (!exists($infor{$name})){
  $infor{$name} = 1;
		print "$name\n";
	}else {
		next;
		}
	}
	close IN;
