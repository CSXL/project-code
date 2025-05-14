# Makefile for compiling Markdown files to PDF using Pandoc

# --- Variables ---

# Find all Markdown files in the current directory
MDS := $(wildcard *.md)
# Generate corresponding PDF filenames (e.g., from "lecture1.md" to "lecture1.pdf")
PDFS := $(MDS:.md=.pdf)

# Pandoc command and base flags
PANDOC := pandoc
PDF_ENGINE := --pdf-engine=xelatex

# Your specific Pandoc options for variables/metadata
# Note: Quotes are used here for clarity within the Makefile variable,
# Pandoc expects them as -V key="value" or -V key=value if no spaces.
PANDOC_OPTIONS := -V geometry="margin=1in" \
                  -V documentclass="article" \
                  -V fontsize="11pt"

# Combine all Pandoc flags
PANDOC_COMMAND_FLAGS := $(PDF_ENGINE) $(PANDOC_OPTIONS)

# --- Targets ---

# Phony targets don't represent actual files to be built by these names
.PHONY: all clean

# Default target: build all PDF files
# Typing "make" or "make all" will trigger this.
all: $(PDFS)

# Pattern rule: How to build a .pdf file from a .md file
# This rule will be applied for each PDF target.
# $@ is an automatic variable representing the target name (the .pdf file).
# $< is an automatic variable representing the first prerequisite (the .md file).
%.pdf: %.md
	@echo "Compiling $< into $@..."
	$(PANDOC) $< $(PANDOC_COMMAND_FLAGS) -o $@

# Clean target: remove all generated PDF files
# To use, type "make clean"
clean:
	@echo "Removing generated PDF files..."
	rm -f $(PDFS)
