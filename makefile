OS:=
default:
	-rm *.o
	g++ -c -g3 -D$(OS) -std=c++17 -Wall -o cfgman.o configman.cpp
	g++ -c -g3 -D$(OS) -std=c++17 -Wall -o main.o main.cpp
	g++ -g3 -D$(OS) -std=c++17 -Wall -o rpauto.out main.o cfgman.o
