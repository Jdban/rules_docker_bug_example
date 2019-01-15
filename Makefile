demonstrate-bug:
	bazel run //:java_image_fails_with_args -- --norun

	@echo ""
	@echo "The java code should not have run due to the '-- --norun' but 'Hello World' printed because the image was run"

demonstrate-expected-behavior:
	bazel run //:java_image_working_without_args -- --norun

	@echo ""
	@echo "The java does not run due to the '-- --norun' and behavior is as expected"
