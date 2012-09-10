CC = g++
CFLAGS = -Wall -Wextra -Werror

test: card_test.cpp Card.o Deck.o
	$(CC) $(CFLAGS) -o test card_test.cpp Card.o Deck.o

trick: card_trick.cpp Card.o
	$(CC) $(CFLAGS) -o trick card_trick.cpp Card.o

Card.o: Card.h Card.cpp
	$(CC) $(CFLAGS) -c Card.cpp

Deck.o: Deck.h Deck.cpp Card.o
	$(CC) $(CFLAGS) -c Deck.cpp

clean: 
	rm -f *~
	rm -f *.o
	rm -f test
	rm -f trick