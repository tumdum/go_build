build: test.go package.go
	mkdir -p complicated/package
	go tool compile -p complicated/package/path -complete -pack -o complicated/package/path.a package.go
	go tool compile -p main -complete -I . -pack test.go
	go tool link -L . -o test test.a

clean:
	rm -rf complicated
	rm -f test.a
	rm -f test

	
