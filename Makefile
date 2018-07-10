#  target: dependencies
#          command

all: sum_test


sum.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp

#  sum.cpp는 불필요
main.o: sum.h main.cpp
	g++ -c -o main.o main.cpp

sum_test: main.o sum.o
	g++ -o sum_test main.o sum.o

clean:
	rm -f *.o
	rm -f sum_test

#	실행파일은 github에 올릴필요가 없다
#	How does Makefile know that a file changed?
#	->It looks at the file time-stamp.
#	->If a dependency is newer than the target, the target is rebuilt


