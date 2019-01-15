load("@io_bazel_rules_docker//java:image.bzl", "java_image")

java_image(
    name = "java_image",
    srcs = ["Binary.java"],
    args = ["-Dasd=true"],
    # Put these runfiles into their own layer.
    main_class = "Binary",
)