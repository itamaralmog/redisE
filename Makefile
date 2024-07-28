CXX = g++ 
CXXFLAGS = -Wall -Wextra -O2 -g 

# Sources and targets
SRCS = server.cpp hashtable.cpp avl.cpp zset.cpp heap.cpp thread_pool.cpp  # Add heap.cpp if it contains heap_update implementation
OBJS = $(SRCS:.cpp=.o)

# Targets and their dependencies
all: server test client

client: client.cpp common.hpp
	$(CXX) $(CXXFLAGS) client.cpp -o client

server: $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $@ -lpthread

test: test_heap.cpp heap.hpp heap.cpp
	$(CXX) $(CXXFLAGS) test_heap.cpp -o test

clean:
	rm -rf server $(OBJS) test client

