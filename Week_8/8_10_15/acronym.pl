=pod
 reverser.pl
 Created for: https://www.reddit.com/r/ProgrammingPrompts/comments/2rlve1/easybeginner_uags_universal_acronym_generating/
 Author: Trevor Salom
=cut

my $next = "Y";
my $limit = 1;
while($limit == 1) {
  print "What would you like to make an acronym for?\n> ";
  $string = <>;
  my @temp = split / /, $string;
  my $final = "";
  foreach my $word (@temp) {
    $final = $final . uc(substr($word, 0, 1));
  }
  print $final;
  print "\nWould you like to make another acronym? [Y/N]\n";
  $more = <>;
  $next = uc(substr($more, 0, 1));
  $limit = $next eq "Y";
}
print "Goodbye.\n"
