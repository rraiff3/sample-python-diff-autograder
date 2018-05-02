#!/usr/bin/env bash

#@test{"stdout":10}
python3 helloWorld.py

#@test{"stderr":10}
python3 helloStderr.py

#@test{"filename":"hello.txt", "points":10}
python3 helloFile.py

#@test{"stdout": 10}
python3 readStdin.py < readStdinTest1.txt

#@test{"stdout": 10}
python3 readStdin.py < readStdinTest2.txt

#@test{"stdout": 10}
python3 readStdin.py < readStdinTest3.txt

#@test{"stdout": 10}
python3 readFile.py

#@test{"stdout": 10}
python3 countToN.py 10

#@test{"stdout": 10}
python3 countToN.py -1

#@test{"stderr": 10}
python3 countToN.py abcd