directory-delete ".cache/tmp/foo";
directory ".cache/tmp/foo";
bash "tar -czf  .cache/tmp/foo/test.tar.gz test.txt";

directory-delete ".cache/tmp/foo2";
directory ".cache/tmp/foo2";

module-run 'Archive', %(
  source  => '.cache/tmp/foo/test.tar.gz',
  target  => '.cache/tmp/foo2',
  verbose => 1,
  no-install-deps => True
);

bash "ls -l .cache/tmp/foo2";
