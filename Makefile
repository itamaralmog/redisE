make:
	g++ -Wall -Wextra -O2 -g client.cpp -o client
	g++ -Wall -Wextra -O2 -g server.cpp -o server

clean:
	rm -rf server client



