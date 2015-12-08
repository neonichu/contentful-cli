SPM_WC=$(HOME)/Sources/swift-package-manager/.build/debug

.PHONY: all clean

all:
	cd $(SPM_WC) && swift build
	$(SPM_WC)/swift-build
	./.build/debug/contentful-cli

clean:
	$(SPM_WC)/swift-build --clean
