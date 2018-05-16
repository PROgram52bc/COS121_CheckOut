targets = checkout checkout2

all: $(targets)

$(targets): %: %.cpp conio.o
	$(CXX) -o $@ $^

conio.o: conio.cpp conio.h
	$(CXX) -c -o $@ $<

.PHONY:clean
clean:
	$(RM) *.o $(targets)
