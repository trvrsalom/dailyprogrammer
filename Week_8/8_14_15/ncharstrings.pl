=pod
 ncharstrings.pl
 Created for: https://www.reddit.com/r/dailyprogrammer/comments/10pf4a/9302012_challenge_102_intermediate_ncharacterset/
 Author: Trevor Salom
=cut

sub ncset {
  my ($str, $len) = @_;
  my %data;
  foreach my $x (0..(length($str))-1) {
    my $char = substr ($str, $x, 1);
    if( exists($data{$char} ) ){
      $data{$char}++;
    }
    else {
      $data{$char} = 1;
    }
  }
  foreach my $k (keys %data) {
    $curr = $data{$k};
    if($curr > $len) {
      return "";
    }
  }
  return "1";
}
$pass = 0;
$fail = 0;
my $file = 'words.txt';
open(my $fh, '<:encoding(UTF-8)', $file)
  or die "Could not open file '$file' $!";

while (my $row = <$fh>) {
  chomp $row;
  lc $row;
  if(ncset($row, 4)) {
    $pass++;
  }
  else {
    $fail++;
  }
}

print "$pass words passed, $fail words failed.\n";
