=pod
 fallouthacking.pl
 Created for: https://www.reddit.com/r/dailyprogrammer/comments/263dp1/5212014_challenge_163_intermediate_fallouts/
 Author: Trevor Salom
=cut

print "Difficulty? (1-5): ";
$difficulty = <>;
$difficulty = int($difficulty);
$wordcount = int(((($difficulty/5.0) * 3.0) * 4) + 0.5) + 3;
$wordlength = int(((($difficulty/5.0) * 3.0) * 4) + 0.5) + 3;
my $file = 'words.txt';
open(my $fh, '<:encoding(UTF-8)', $file)
  or die "Could not open file '$file' $!";
@pwords = ();
@words = ();
$wordsize = 0;
while (my $row = <$fh>) {
  if(length($row) == $wordlength) {
    if($wordsize < $wordcount) {
      chomp($row);
      push(@pwords, $row);
    }
  }
}
while($wordsize < $wordcount) {
  push(@words, @pwords[rand @pwords]);
  $wordsize++;
}
$actual = @words[rand @words];
foreach $w (@words) {
  print "$w\n";
}
$win = 0;
foreach $i (0..3) {
  $i = 4 - $i;
  print "Guess ($i left)? ";
  $guess = <STDIN>;
  chomp $actual;
  chomp $guess;
  $correct = 0;
  $tot = length($guess);
  foreach $x (0..(length($guess))-1) {
    $char = substr ($guess, $x, 1);
    $achar = substr ($actual, $x, 1);
    if($char eq $achar) {
      $correct++;
    }
  }
  print "$correct/$tot correct. \n";
  if($correct == $tot) {
    $win = 1;
    last;
  }
}
if($win == 1) {
  print "You Win!\n";
}
else {
  print "You Lose. The correct word was $actual.\n";
}
