=pod
 reverser.pl
 Created for: https://www.reddit.com/r/ProgrammingPrompts/comments/2r75g9/beginner_open_a_text_file_and_display_its/
 Author: Trevor Salom
=cut

my $file = 'input.txt';
open(my $fh, '<:encoding(UTF-8)', $file)
  or die "Could not open file '$file' $!";

my @words = ();
while (my $row = <$fh>) {
  chomp $row;
  my @temp = split / /, $row;
  foreach my $word (@temp) {
    push(@words, $word);
  }
  push(@words, "\n");
}
@words = reverse(@words);
shift(@words);
foreach my $w (@words) {
  print $w;
  print " ";
}
print "\n"
