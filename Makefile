build: test.go foo/package.go
	go tool compile -p foo -complete -trimpath /home/tumdum/Developer/go_build/foo -pack -o foo.a foo/package.go
	go tool compile -p main -complete -I /home/tumdum/Developer/go_build -pack test.go
	go tool link -L . -o test test.a

clean:
	rm -f foo.a
	rm -f test.a
	rm -f test

	
