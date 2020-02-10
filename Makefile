input_file := hostname.cpp
output_dir := build
output_file := $(output_dir)/hostname

.PHONY: all build clean

all:

build:
      @mkdir -p $(output_dir)
      @g++ $(input_file) -o $(output_file)

clean:
      @rm -rf $(output_file) $(output_file_exe)
