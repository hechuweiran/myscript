#!/usr/bin/perl  -w
my $geno;
open(IN, $ARGV[0]) or die"";
while(<IN>){
        chomp;
        my @data = split (/\s+/,$_);
        my $chrm = $data[0];
        my $post = $data[1];
        my $ref  = $data[3];
        my $alt  = $data[4];
        print "$chrm\t$post\t";
        foreach my $i(9..$#data){
                my $tmp = $data[$i];
                my @tmpdb = split(/:/,$tmp);
                $geno     = $tmpdb[0];
                $AD       = $tmpdb[1];
                ($a,$b)= split (/\,/,$AD);      
                if($geno eq '0/0'){
                        print "$ref\t";
                }elsif($geno eq './.'){
                        print "-\t";
                }elsif($geno eq '0/1'){
                        if($a>$b){
                        print "$ref\t";
                        }else{
                        print "$alt\t";
                        }
                }elsif($geno eq '1/1'){
                print "$alt\t";
                }else{print "$geno      "}
                }       
                print "\n";     
                        }
close IN;
