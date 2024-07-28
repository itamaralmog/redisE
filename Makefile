make:
	g++ -Wall -Wextra -O2 -g client.cpp -o client
	g++ -Wall -Wextra -O2 -g server.cpp hashtable.cpp hashtable.hpp -o server

tree:
	g++ -Wall -Wextra -O2 -g avl.cpp test_avl.cpp -o testavl

clean:
	rm -rf server client testavl

