#!/usr/bin/env perl -w

# Check that name() returns undef properly.

use strict;
use Test;
BEGIN { plan tests => 2 }

use Jabber::Lite; ok(1);

my $jobj = new Jabber::Lite;

my $evalstr = eval { defined( $jobj->name() ) ? 0 : 1; };
if( defined( $evalstr ) && $@ =~ /^\s*$/ ) {
  ok(1);
}else{
  print "# Failed to get name: $@\n";
  ok(0);
}

exit;
__END__
