Requirements - Must have `Bazel` and `Make` installed

Pull down this repo with:

```git clone git@github.com:Jdban/rules_docker_bug_example.git```

Then run either of these commands:

* Demonstrate bug:

```make demonstrate-bug```


* Demonstrate expected behavior:

```make demonstrate-expected-behavior```


Or more easily, here is sample output:

Expected behavior (without args attribute):
```
$ make demonstrate-expected-behavior 
bazel run //:java_image_working_without_args -- --norun
INFO: Invocation ID: 9f0cfa77-dcdd-44a3-abca-7b78e28e35c1
INFO: Analysed target //:java_image_working_without_args (4 packages loaded, 74 targets configured).
INFO: Found 1 target...
Target //:java_image_working_without_args up-to-date:
  bazel-bin/java_image_working_without_args-layer.tar
INFO: Elapsed time: 2.449s, Critical Path: 0.11s
INFO: 1 process: 1 worker.
INFO: Build completed successfully, 2 total actions
INFO: Build completed successfully, 2 total actions
Loaded image ID: sha256:ead00f9945fc1deb632754c7f4bfbe26486196ca97990a561dabda0e0621282d
Tagging ead00f9945fc1deb632754c7f4bfbe26486196ca97990a561dabda0e0621282d as bazel:java_image_working_without_args

The java does not run due to the '-- --norun' and behavior is as expected
```

Behavior with args attribute:
```
$ make demonstrate-bug              
bazel run //:java_image_fails_with_args -- --norun
INFO: Invocation ID: 11dd93a5-01ba-409a-a9b2-db10385c5489
INFO: Analysed target //:java_image_fails_with_args (0 packages loaded, 2 targets configured).
INFO: Found 1 target...
Target //:java_image_fails_with_args up-to-date:
  bazel-bin/java_image_fails_with_args-layer.tar
INFO: Elapsed time: 0.209s, Critical Path: 0.07s
INFO: 1 process: 1 worker.
INFO: Build completed successfully, 2 total actions
INFO: Build completed successfully, 2 total actions
Loaded image ID: sha256:26cd654000c8a03169c18151867a38b90f031026c4386a5f61eeca3b8d886133
Tagging 26cd654000c8a03169c18151867a38b90f031026c4386a5f61eeca3b8d886133 as bazel:java_image_fails_with_args
Hello World

The java code should not have run due to the '-- --norun' but 'Hello World' printed because the image was run
```
