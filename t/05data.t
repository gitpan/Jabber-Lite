#!/usr/bin/env perl -w

# Check that data() returns undef properly.

use strict;
use Test;
BEGIN { plan tests => 2 }

use Jabber::Lite; ok(1);

my $jobj = new Jabber::Lite;

my $evalstr = eval { defined( $jobj->data() ) ? 0 : 1; };
if( defined( $evalstr ) && $@ =~ /^\s*$/ ) {
  ok(1);
}else{
  print "# Failed to get data: $@\n";
  ok(0);
}

exit;
__END__
