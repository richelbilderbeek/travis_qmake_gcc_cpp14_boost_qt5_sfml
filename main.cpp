#include <QApplication>
#include "my_dialog.h"

#include <boost/graph/adjacency_list.hpp>
#include <SFML/Graphics/RectangleShape.hpp>

///C++14 and Boost
///Returning 1 is OK
auto f() noexcept
{
  boost::adjacency_list<> g;
  boost::add_vertex(g);
  return boost::num_vertices(g);
}


///C++14 and SFML
///Returning 1 is OK
auto g()
{
  ::sf::RectangleShape shape(::sf::Vector2f(100.0,250.0));
  return shape.getSize().x > 000'050;
}

int main(int argc, char *argv[])
{
  QApplication a(argc, argv);
  if (f() != 1) return 1;
  if (g() != 1) return 1;
  my_dialog d;
  d.show();
  return a.exec();
}
