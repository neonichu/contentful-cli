.PHONY: all clean

all:
	swift-build
	./.build/debug/contentful-cli

clean:
	swift-build --clean
