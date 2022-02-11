.PHONY: examples

CC = xelatex
SRC_DIR = src
CV_DIR = src/cv
OUPUT_DIR = build
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

cv: $(SRC_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(OUPUT_DIR) $<

coverletter: $(SRC_DIR)/coverletter.tex
	$(CC) -output-directory=$(OUPUT_DIR) $<

clean:
	rm -rf build/*
