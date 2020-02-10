input_file = hostname.cpp
output_file = hostname

build:
      g++ $(input_file) -o $(output_file)

clean:
      rm -r $(output_file)
