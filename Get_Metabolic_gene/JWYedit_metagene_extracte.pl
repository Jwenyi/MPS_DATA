


my %hash=();
open RF,"c2.cp.kegg.v7.0.symbols.gmt" or die $!;
while(my $line =<RF>){
	my @arr=split /\t/,$line;
	if($arr[0]=~/METABOLISM/){
		for(my $i=2;$i<=$#arr;$i++){
			$hash{$arr[$i]}=1;
		}
	}
}
close RF;

open RF,"symbol.txt" or die $!;
open WF,">tcgaMetabExp.txt" or die $!;
while(my $line=<RF>){
	chomp $line;
	if($.==1){
		print WF $line . "\n";
		next;
	}
	my @arr=split /\t/,$line;
	if (exists $hash{$arr[0]}){
		print WF $line . "\n";
	}
}
close RF;
close WF;