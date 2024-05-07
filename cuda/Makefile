NVCC = nvcc
NVCCFLAGS = -rdc=true
OUTPUT_NAME = output

build:
	echo -e "\033[0;31mBuilding..."
	$(NVCC) $(NVCCFLAGS) -o $(OUTPUT_NAME) $(wildcard *.cu) $(wildcard */*.cu)
	echo -e "\033[0m"

debug:
	echo -e "\033[1;32m[ :3 - Debug process not set up! - :3 ]"
	echo -e "\033[0m]"

run:
	echo -e "\033[0;32mRunning output file..."
	./$(OUTPUT_NAME)
	echo -e "\033[0m"

clean:
	echo -e "\033[0;34mCleaning up output file..."
	rm -f $(OUTPUT_NAME)
	echo -e "\033[0m"