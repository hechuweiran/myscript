#! perl

open(FILE,"grep -v '##' $ARGV[0]|") or die "";
open(OUT,'>',$ARGV[1]) or die "";
$tit = <FILE>;
print OUT "$tit";
my $hash=();
$num=0;
while(<FILE>){
        chomp;
        my @tmp =split /\s+/,$_;
        $a = shift @tmp;
        $b = join ("\t",@tmp);
        if(exists $hash{$a}){
                print OUT "$hash{$a}\t$b\n";
        }else{
                $num++;
                $hash{$a}=$num;
                print OUT "$num\t$b\n";
        }
}
close FILE;
close OUT;
