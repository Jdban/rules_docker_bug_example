load("@io_bazel_rules_docker//java:image.bzl", "java_image")

java_image(
    name = "java_image_working_without_args",
    srcs = ["Binary.java"],
    main_class = "Binary",
)

java_image(
    name = "java_image_fails_with_args",
    srcs = ["Binary.java"],
    args = ["-Dasd=true"],  # Causes failure of --norun
    main_class = "Binary",
)
