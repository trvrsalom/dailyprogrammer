=pod
 alphametics.pl
 Created for: https://www.reddit.com/r/ProgrammingPrompts/comments/3gukko/medium_write_a_program_that_can_solve_alphametics/
 Author: Trevor Salom
=cut

%data = (
  'A', 0,
  'B', 1,
  'C', 2,
  'D', 3,
  'E', 4,
  'F', 5,
  'G', 6,
  'H', 7,
  'I', 8,
  'J', 9
);
$input = <>;

foreach my $key (keys %data) {
  $input =~ s/$key/$data{$key}/g;
}

chomp $input;
print $input . " = " . eval($input) . "\n";
