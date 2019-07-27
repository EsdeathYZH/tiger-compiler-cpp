CXXFLAGS=-std=c++17

a.out: main.o
	g++ $(CXXFLAGS) $^

main.o: main.cc slp.hpp prog1.hpp
	g++ $(CXXFLAGS) -c $<


handin:
	@tar czf lab1_xxx.tar.gz myimpl.cc
	@echo "Please rename lab1_xxx.tar.gz to lab1_<your student id>.tar.gz"
	@echo "For example, lab1_517030900000.tar.gz."

grade:
	./gradeMe.sh
	
clean:
	rm -f a.out *.o *.hpp.gch
