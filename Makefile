CXXFLAGS=-std=c++11 -Wall -O3
OBJ=solver.o altproj.o game.o tests.o

all: $(OBJ)
	$(CXX) main.cpp -o sudoku $(OBJ) $(CXXFLAGS)

debug: $(OBJ)
	$(CXX) debug.cpp -o debug $(OBJ) $(CXXFLAGS)

%.o: %.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

clean:
	rm $(OBJ) sudoku

