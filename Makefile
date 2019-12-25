
all:
	$CC -o hello hello.cpp


target:
	$CC -o hello.tgt hello.cpp

host:
	gcc -o hello.host hello.cpp

clean:
	rm hello
