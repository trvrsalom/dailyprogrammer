=pod
 rpsai.pl
 Created for: https://www.reddit.com/r/dailyprogrammer/comments/23qy19/4232014_challenge_159_intermediate_rock_paper/
 Author: Trevor Salom
=cut

print "How many games would you like to play: ";
$gamecount = <>;
$gamecount = int($gamecount);
$gamecount--;
$wins = 0; #player wins
$ties = 0;
@moves = ("rock", "paper", "scissors");
@winner = (1, 2, 0);
@weights = (0,0,1);
for my $i (0..$gamecount){
  print "Make your move:\n 1. Rock \n 2. Paper \n 3. Scissors \n";
  $m = <>;
  $m = int($m);
  $m--;
  $playermove = @moves[$m];
  #@weights[$m]++;
  $cmove = @moves[$cm];

  my $wsum = 0;
  my $wc = 0;
  for my $x (0..2) {
    $wsum += $weights[$x];
  }
  my $wtarg = rand($wsum);
  while($wtarg > 0) {
    $wtarg -= @weights[$wc];
    if ($wtarg > 0) {
      $wc++;
    }
  }
  $wc++;
  $cm = @winner[$wc];

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
  @weights[$m]++;
  print "\n-------------------------------\n";
}
for my $o (@weights) {
  print "$o ";
}
print "\n";
$gamecount++;
$wp = ($wins/$gamecount)*100.0;
$tp = ($ties/$gamecount)*100.0;
print "Out of $gamecount games you won $wp% of the time and tied $tp% of the time.\n";
