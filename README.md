# SYNOPSIS

Extract various archives using tar/unzip programs.

# INSTALL

    $ panda install Sparrowdo::Archive

# USAGE

    $ cat sparrow file

    module_run 'Archive', %(
        source => '/tmp/foo/bar/master.zip',
        target => '/var/app',
        user   => 'alex'
    );
    

# Parameters

## source

A local file path to archived file. Obligatory. No default.

## target

A local file path where to store extracted archive data. No default value. Obligatory.
  
## user

A user which run a archive program and thus to which user extracted files will belong to. 
Optional. No default value.

# Author

[Alexey Melezhik](melezhik@gmail.com)
