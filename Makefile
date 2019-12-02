ifndef VERBOSE
.SILENT:
endif

output = testResults.txt

build: compile.sh
	bash compile.sh

doTests: runCheckstyle.sh runJPF.sh runJUnit.sh runSpotbugs.sh
	echo "Checkstyle:\n" > output
	bash runCheckstyle.sh >> output
	echo "\nJPF:\n" >> output
	bash runJUnit.sh >> output
	echo "\nJUnit:\n" >> output
	bash runJUnit.sh >> output
	echo "\nSpotbugs:\n" >> output
	bash runSpotbugs.sh >> output

getResults: output
	open output

test: doTests getResults

clean:
	rm -f output