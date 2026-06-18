BINARY_NAME=webrr
INSTALL_DIR=$(HOME)/.local/bin
SHARE_DIR=$(HOME)/.local/share/webrr

.PHONY: all build install clean

all: build install

build:
	@echo "Building..."
	go build -o dist/$(BINARY_NAME) main.go

install:
	mkdir -p $(INSTALL_DIR)
	mkdir -p $(SHARE_DIR)
	cp dist/$(BINARY_NAME) $(INSTALL_DIR)/$(BINARY_NAME)
	chmod +x $(INSTALL_DIR)/$(BINARY_NAME)
	@echo "Installed! - $(INSTALL_DIR)/$(BINARY_NAME)"

clean:
	@echo "Cleaning dist..."
	rm -rf dist