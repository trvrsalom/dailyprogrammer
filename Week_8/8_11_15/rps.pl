=pod
 rps.pl
 Created for: https://www.reddit.com/r/dailyprogrammer/comments/23lfrf/4212014_challenge_159_easy_rock_paper_scissors/
 Author: Trevor Salom
=cut

print "How many games would you like to play: ";
$gamecount = <>;
$gamecount = int($gamecount);
$gamecount--;
$wins = 0; #player wins
$ties = 0;
@moves = ("rock", "paper", "scissors");
for my $i (0..$gamecount){
  print "Make your move:\n 1. Rock \n 2. Paper \n 3. Scissors \n";
  $m = <>;
  $m = int($m);
  $m--;
  $cm = rand(2);
  $cm = int($cm + 0.5);
  $playermove = @moves[$m];
  $cmove = @moves[$cm];
  print "You chose $playermove. CPU chose $cmove.\n";
  if($m == $cm) {
    print "You tied";
    $ties++;
  }
  elsif ($m == 0) {
    if ($cm == 1) {
      print "CPU Wins";
    }
    elsif($cm == 2) {
      print "You Win";
      $wins++;
    }
  }
  elsif($m == 1) {
    if ($cm == 2) {
      print "CPU Wins";
    }
    elsif($cm == 0) {
      print "You Win";
      $wins++;
    }
  }
  elsif($m == 2) {
    if ($cm == 0) {
      print "CPU Wins";
    }
    elsif($cm == 1) {
      print "You Win";
      $wins++;
    }
  }
  print "\n-------------------------------\n";
}
$gamecount++;
$wp = ($wins/$gamecount)*100.0;
$tp = ($ties/$gamecount)*100.0;
print "Out of $gamecount games you won $wp% of the time and tied $tp% of the time.\n";
