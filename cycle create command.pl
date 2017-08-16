#!perl -w
print "java -Xmx60G -jar ~/software/GenomeAnalysisTK.jar -T HaplotypeCaller -R ../L.edodes.fa -nct 8\t";
$tmp = `find -name "*.sort.rd.align.bam"`;
@tmpdb = split (/\n/,$tmp);
foreach $i (0..$#tmpdb){
	$name =$tmpdb [$i];
	print "-I $name\t";
	}
	print " -o pop_gatk.vcf ";
