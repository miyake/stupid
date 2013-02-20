EXE = bin/program.exe
GPP = g++ -Wall

$(EXE): obj/main/main.o obj/sub/print.o
	mkdir -p bin
	$(GPP) -o $@ $?

obj/main/main.o: src/main/main.cpp include/sub/print.h
	mkdir -p obj/main
	$(GPP) -I include -c -o $@ $<

obj/sub/print.o: src/sub/print.cpp include/sub/print.h
	mkdir -p obj/sub
	$(GPP) -I include -c -o $@ $<

.PHONY: run
run: $(EXE)
	$<

.PHONY: clean
clean:
	rm -rf bin obj

