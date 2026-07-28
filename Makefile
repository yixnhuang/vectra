# ---------------------------------------------------------------------------
# Vectra Makefile
# ---------------------------------------------------------------------------
#
# Common commands:
#
#   make cv                 Build the personal CV
#   make minimal            Build the minimal example
#   make academic           Build the academic CV example
#   make examples           Build all examples
#   make all                Build personal CV and examples
#   make clean              Remove LaTeX auxiliary files
#   make clean-output       Remove generated PDFs in output/
#   make distclean          Clean auxiliary files and generated PDFs
#
# Most users should run:
#
#   make cv
#
# ---------------------------------------------------------------------------

SHELL := /bin/sh

LATEXMK := latexmk
ENGINE := -pdf
LATEXMK_FLAGS := -interaction=nonstopmode -file-line-error

OUTPUT_DIR := output

CV_DIR := cv
MINIMAL_DIR := examples/minimal
ACADEMIC_DIR := examples/academic-cv

CV_JOBNAME := yixuan-huang-cv
MINIMAL_JOBNAME := vectra-minimal-example
ACADEMIC_JOBNAME := vectra-academic-cv-example

.PHONY: all cv examples minimal academic clean clean-output distclean help

all: cv examples

cv:
	@mkdir -p $(OUTPUT_DIR)
	@echo "Building personal CV..."
	@cd $(CV_DIR) && TEXINPUTS=../src//: $(LATEXMK) $(ENGINE) $(LATEXMK_FLAGS) -jobname=$(CV_JOBNAME) -outdir=../$(OUTPUT_DIR) main.tex
	@echo "Built $(OUTPUT_DIR)/$(CV_JOBNAME).pdf"

examples: minimal academic

minimal:
	@mkdir -p $(OUTPUT_DIR)
	@echo "Building minimal example..."
	@cd $(MINIMAL_DIR) && TEXINPUTS=../../src//: $(LATEXMK) $(ENGINE) $(LATEXMK_FLAGS) -jobname=$(MINIMAL_JOBNAME) -outdir=../../$(OUTPUT_DIR) main.tex
	@echo "Built $(OUTPUT_DIR)/$(MINIMAL_JOBNAME).pdf"

academic:
	@mkdir -p $(OUTPUT_DIR)
	@echo "Building academic CV example..."
	@cd $(ACADEMIC_DIR) && TEXINPUTS=../../src//: $(LATEXMK) $(ENGINE) $(LATEXMK_FLAGS) -jobname=$(ACADEMIC_JOBNAME) -outdir=../../$(OUTPUT_DIR) main.tex
	@echo "Built $(OUTPUT_DIR)/$(ACADEMIC_JOBNAME).pdf"

clean:
	@echo "Cleaning LaTeX auxiliary files..."
	@find . \
		-name "*.aux" -o \
		-name "*.bbl" -o \
		-name "*.bcf" -o \
		-name "*.blg" -o \
		-name "*.brf" -o \
		-name "*.fdb_latexmk" -o \
		-name "*.fls" -o \
		-name "*.idx" -o \
		-name "*.ilg" -o \
		-name "*.ind" -o \
		-name "*.lof" -o \
		-name "*.log" -o \
		-name "*.lot" -o \
		-name "*.nav" -o \
		-name "*.out" -o \
		-name "*.run.xml" -o \
		-name "*.snm" -o \
		-name "*.synctex.gz" -o \
		-name "*.toc" -o \
		-name "*.vrb" -o \
		-name "*.xdv" \
		| xargs -r rm -f
	@echo "Auxiliary files removed."

clean-output:
	@echo "Removing generated PDFs from $(OUTPUT_DIR)/..."
	@find $(OUTPUT_DIR) -type f ! -name ".gitkeep" -delete
	@echo "Generated output removed."

distclean: clean clean-output

help:
	@echo "Vectra build targets:"
	@echo ""
	@echo "  make cv             Build the personal CV"
	@echo "  make minimal        Build the minimal example"
	@echo "  make academic       Build the academic CV example"
	@echo "  make examples       Build all examples"
	@echo "  make all            Build personal CV and all examples"
	@echo "  make clean          Remove LaTeX auxiliary files"
	@echo "  make clean-output   Remove generated PDFs in output/"
	@echo "  make distclean      Remove auxiliary files and generated PDFs"
	@echo ""
