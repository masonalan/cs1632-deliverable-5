javac -d bin -cp CommandLineJunit/*;jpf-core/build/jpf-annotations.jar;jpf-core/build/jpf.jar;src/ src/*.java 
java -cp bin;CommandLineJunit\junit-4.12.jar;CommandLineJunit\hamcrest-core-1.3.jar;CommandLineJunit\mockito-core-1.10.19.jar;CommandLineJunit\objenesis-2.4.jar TestRunner
