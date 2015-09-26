#include <iostream>
#include "Card.h"
#include "Deck.h"
#include "Hand.h"
using std::cout;
using std::endl;

int main() {
  cout << "hello world!" << endl;

  //Card* c = new Card(2,4); //two of spades
  Card* c2;
  Card* c1;
  //Card* d = new Card(14,3); //ace of hearts

  //c->print();
  

  Deck* d = new Deck();
  Hand* h = new Hand();
  d->shuffle();

  c1 = d->deal();
  c2 = d->deal();
  c2->print();
  c1->print();
  
  d->print();

  return 0;
}
