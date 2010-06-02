#!/usr/bin/env perl -w

# Check that getChildren doesn't result in the module dying.

use strict;
use Test;
BEGIN { plan tests => 4 }

use Jabber::Lite; ok(1);

my $jobj = new Jabber::Lite;
my $evalstr = eval { defined($jobj->getChildren) };
if( defined( $evalstr ) ) {
  print "# getChildren did not die()\n";
  ok(1);
}else{
  print "# getChildren did die(), whoops\n";
  ok(0);
}

$jobj->name( "test" );
$jobj->insertTag( "child1" );
$jobj->insertTag( "child2" );

for my $cobj ( $jobj->getChildren ) {
  print "# Got back " . $cobj->toStr . "\n";
  ok(1);
}

exit;
__END__

