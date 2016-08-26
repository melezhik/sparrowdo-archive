use v6;

unit module Sparrowdo::Archive;

use Sparrowdo;

our sub tasks (%args) {

  task_run  %(
    task => 'install archive programs',
    plugin => 'package-generic',
    parameters => %( list => 'tar gzip unzip' )
  );

  task_run %(
    task    => "extract files from archive",
    plugin  => "bash",
    parameters => %(
      user    => %args<user>,
      command => 'unzip -o -u ' ~ %args<source> ~ ' -d ' ~ %args<target>,
      debug   => 0,
    )
  );

}

