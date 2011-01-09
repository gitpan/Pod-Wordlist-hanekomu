use 5.008;
use strict;
use warnings;

package Pod::Wordlist::hanekomu;
BEGIN {
  $Pod::Wordlist::hanekomu::VERSION = '1.110090';
}
# ABSTRACT: Add words for spell checking POD
use Test::Spelling;
set_spell_cmd 'aspell list';
use utf8;
our @person_names = qw(
  Achim
  Adam
  Conway
  Cushing
  Damian
  Doherty
  Doran
  Eilam
  Ekker
  Florian
  Gruenauer
  Heinz
  Helmberger
  Hofstetter
  Marcel
  Mark
  Metheringham
  Miyagawa
  Ran
  Ricardo
  Signes
  Takesako
  Tatsuhiko
);
our @tech_names = qw(
  AnyEvent
  AOP
  API
  AspectJ
  Babelfish
  CPAN
  Coro
  DateTime
  Django
  DBI
  DSL
  EPP
  FirePHP
  Firefox
  FIXME
  GraphViz
  HTTP
  IP
  IPv4
  IPv6
  MVC
  MakeMaker
  Markdown
  mkdn
  Middleware
  OO
  OOP
  PARC
  PHP
  Plack
  PSGI
  README
  ShipIt
  Spiffy
  SQL
  STDIN
  STDOUT
  STDERR
  svk
  TIMTOWTDI
  Unicode
  URI
  URIs
  W3CDTF
  XS
  YAML
  YAML's
);
our @stopwords = qw(
  adaptee
  adaptees
  administrativa
  afterwards
  array's
  backend
  behaviour
  benchmarked
  blog
  blogs
  breakpoint
  breakpoints
  bugtracker
  bundle's
  callback
  callbacks
  callee
  chomp
  chomps
  configurator
  configurators
  crosscutting
  debugger's
  denormalized
  distname
  dotfile
  dotfiles
  filename
  filenames
  formatter
  github
  hash's
  homepage
  hostname
  indices
  init
  japanese
  Joseki
  lookup
  lookups
  kwalitee
  marshalling
  metadata
  middleware
  mixin
  monkeypatch
  monkeypatches
  monkeypatching
  multi
  multi-value
  multi-valued
  munge
  munger
  munging
  namespace
  namespaces
  nestable
  ok
  op
  pipe's
  placeholders
  pluggable
  plugin's
  plugins
  pointcut
  pointcuts
  prepends
  preprocessed
  redispatch
  reusability
  ref
  san
  segment's
  shipit
  startup
  storable
  storages
  stopword
  stopwords
  stringification
  stringifications
  stringifies
  stringify
  subdirectory
  subdirectories
  subobjects
  terminal's
  tokenizes
  toolchain
  unblessed
  unshifts
  username
  uuid
  value's
  variable's
  wellformedness
  whitelist
  whitelists
  workflow
  workflows
  wormhole
  vim
  yml
);

# dedup
my %words = map { $_ => 1 } @person_names, @tech_names, @stopwords;
add_stopwords(sort keys %words);
$ENV{LANG} = 'C';
1;


__END__
=pod

=head1 NAME

Pod::Wordlist::hanekomu - Add words for spell checking POD

=head1 VERSION

version 1.110090

=head1 SYNOPSIS

    use Test::Spelling;
    use Pod::Wordlist::hanekomu;
    all_pod_files_spelling_ok('lib');

=head1 DESCRIPTION

This module, when loaded, adds stopwords for POD spell checking, that is,
words that should be ignored by the spell check.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org/Public/Dist/Display.html?Name=Pod-Wordlist-hanekomu>.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see L<http://search.cpan.org/dist/Pod-Wordlist-hanekomu/>.

The development version lives at L<http://github.com/hanekomu/Pod-Wordlist-hanekomu.git>
and may be cloned from L<git://github.com/hanekomu/Pod-Wordlist-hanekomu.git>.
Instead of sending patches, please fork this project using the standard
git and github infrastructure.

=head1 AUTHOR

Marcel Gruenauer <marcel@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

