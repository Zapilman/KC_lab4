ASFLAGS= --gdwarf-5 -c
LDFLAGS='-static'
SOURCE=Cesar.s
OBJECT=$(SOURCE:.s=.o)
EXECUTABLE=Cesar

all: $(EXECUTABLE)

.PHONY:$(EXECUTABLE)
$(EXECUTABLE): 
	as $(ASFLAGS) $(SOURCE) -o $(OBJECT)
	ld $(LDFLAGS) -o $(EXECUTABLE) $(OBJECT)
clean:
	rm Cesar*.!s
