#
# PROGRAM: Lab Training Exercise
# AUTHOR:  your name
#

CXX = g++
CXXFLAGS = -Wall -Werror -ansi -pedantic -std=c++14 -g
OUTPUT_NAME = result
ENTRYPOINT = labtrain.cpp
SRCS = labtrain.cpp student.cpp

$(ENTRYPOINT:.cpp=): $(SRCS:.cpp=.o)
	$(CXX) $(CXXFLAGS) -o $(OUTPUT_NAME) $(SRCS:.cpp=.o)

debug:
	gdb --silent $(OUTPUT_NAME)

run:
	./$(OUTPUT_NAME)

clean:
	rm -f *.o
	rm -f $(OUTPUT_NAME)
