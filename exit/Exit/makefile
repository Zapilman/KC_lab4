ASFLAGS= --gdwarf-5 -c
LDFLAGS='-static'
SOURCE=exit.s
OBJECT=$(SOURCE:.s=.o)
EXECUTABLE=exit

all: $(EXECUTABLE)

.PHONY:$(EXECUTABLE)
$(EXECUTABLE): 
	as $(ASFLAGS) $(SOURCE) -o $(OBJECT)
	ld $(LDFLAGS) -o $(EXECUTABLE) $(OBJECT)

clean:
	rm exit.o exit
