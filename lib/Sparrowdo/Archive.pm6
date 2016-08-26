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
    task        => "create directory for extraction",
    plugin      => "directory",
    parameters  => %( path =>  %args<target>, owner => %args<user> )
    
  );

  task_run %(
    task    => "extract files from archive",
    plugin  => "bash",
    parameters => %(
      command => 'unzip ' ~ %args<source> ~ ' -d ' ~ %args<target>
      debug => 0,
    )
  );

}

