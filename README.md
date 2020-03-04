# SYNOPSIS

Extract archived files with the help of various archivers programs.

Archive formats supported:

    +-----------+---------------------------+
    | extension | internal archive program  |
    +-----------+---------------------------+
    | *.zip     | unzip                     |
    | *.tar     | tar                       |
    | *.tar.gz  | tar                       |
    | *.gem     | gem                       |
    +-----------+---------------------------+

# Build Status

[![Build Status](https://travis-ci.org/melezhik/sparrowdo-archive.svg?branch=master)](https://travis-ci.org/melezhik/sparrowdo-archive)

# INSTALL

    $ zef install Sparrowdo::Archive

# USAGE

Through cli

    s6 --module-run Archive@source=test.tar.gz,target=/tmp/foo2,verbose=1

Through Sparrow6 DSL


    module-run 'Archive', %(
      source  => '/tmp/foo/test.tar.gz',
      target  => '/tmp/foo2',
      verbose => 1,
    );
    

# Parameters

## source

A local file path to archived file. 

Obligatory. No default.

## target

A local file path where to store extracted archive data. No default value. Obligatory.
  
## user

A user which run a archive program and thus to which user extracted files will belong to. 

Optional. No default value.

## no-install-deps

Don't install dependencies ( tar/gzip package, etc ).

Optional.

## verbose

Try to run archive extractor program in verbose mode. Default value is `0` ( no verbose ). 

Optional.

# Author

[Alexey Melezhik](melezhik@gmail.com)
