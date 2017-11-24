open(ID, $ARGV[0]) or die $!;
open(P, $ARGV[1]) or die $!;

while(<ID>)
{
	chomp;
	$IDs{$_} = 1;
}

close(ID);

while(<P>)
{
	@words = split(/[\t\s]/);
	if(exists ($IDs{$words[0]}))
	{
		print $_;
	}
}

close(P);
