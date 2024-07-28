make: client server

# Targets and their dependencies
client: client.cpp common.hpp
	$(CXX) $(CXXFLAGS) client.cpp -o client

server: server.cpp hashtable.cpp hashtable.hpp common.hpp avl.hpp avl.cpp zset.cpp zset.hpp
	$(CXX) $(CXXFLAGS) server.cpp hashtable.cpp avl.cpp zset.cpp -o server

test: test_offset.cpp avl.hpp
	$(CXX) $(CXXFLAGS) test_offset.cpp -o test

clean:
	rm -rf server client test
