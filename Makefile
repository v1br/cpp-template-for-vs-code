# Library paths
SFML = ./libs/sfml

# Compiler flags
CXX = g++
CXXFLAGS = -c -I"$(SFML)/include" -DSFML_STATIC

# Linker flags
LDFLAGS = -L"$(SFML)/lib" -static-libgcc -static-libstdc++ \
    -lsfml-graphics-s -lsfml-window-s -lsfml-system-s \
    -lopengl32 -lfreetype -lgdi32 -lwinmm -lshell32 -lflac -lvorbisenc -lvorbisfile -lvorbis -logg

# Source files
ENTRY = main.cpp
OBJ = $(ENTRY:.cpp=.o)
TARGET = $(basename $(ENTRY))

# Targets
all: clean compile link run

clean:
	rm -f ./build/$(TARGET) ./build/$(OBJ)

compile:
	$(CXX) $(CXXFLAGS) ./src/$(ENTRY) -o ./build/$(OBJ)

link:
	$(CXX) ./build/$(OBJ) -o ./build/$(TARGET) $(LDFLAGS)

run:
	./build/$(TARGET)
