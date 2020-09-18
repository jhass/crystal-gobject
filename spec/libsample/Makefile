C_SOURCE=$(wildcard *.c)
H_SOURCE=$(wildcard *.h)
OBJ=$(C_SOURCE:.c=.o)
LIBRARY_NAME=test
LIBRARY_BIN=$(shell crystal eval "puts File.expand_path %(../build/lib$(LIBRARY_NAME).so)")
GIR=../build/Test-1.0.gir
TYPELIB=../build/Test-1.0.typelib

CC_FLAGS=-c -Wall -g -fPIC `pkg-config gobject-2.0 --cflags`
LD_FLAGS=`pkg-config gobject-2.0 --libs`

all: $(TYPELIB)

$(LIBRARY_BIN): $(OBJ)
	mkdir -p ../build
	$(CC) -shared -o $@ $^ $(LD_FLAGS)

%.o: %.c %.h
	$(CC) -o $@ $< $(CC_FLAGS)

clean:
	rm -rf *.o $(LIBRARY_BIN) *~ $(GIR) $(TYPELIB)

$(GIR): $(LIBRARY_BIN)
	g-ir-scanner --warn-all --namespace=Test --nsversion=1.0 --include=GObject-2.0 /usr/ --library=$(LIBRARY_NAME) --library-path=../build --pkg=gobject-2.0 -o $(GIR) $(H_SOURCE)

$(TYPELIB): $(GIR)
	g-ir-compiler $(GIR) -o $(TYPELIB)
