1. Shebang Statement
	- Sheband statement (#!) also known as hashband statement is a a statement written on the top a script to show the operating system which interpreter should be used to run the script.

# Note : We can't give spaces around "=" in bash like ' code = "hello" ' it's wrong we should write ' code="hello" '

 2. Array in Bash Scripting
	- Array in bash is slightly different from any other programming language here we enclose values with ' ( ) ' and separate them with spaces not commas.
	- eg: arr=("hello" "hello again" "bye")
	- To access array we can simply write ${arr[0]}

3. Command Substition
	- It is a method in bash scripting to save result of a command in a variable by using some syntax
	- eg: LOG_FILES=$(find . -name "*.log" -mtime -1)
	- $() is important here

4. Loop
	- I know loop already just writing syntax cuz in bash it's different
	- for 'iterator' in 'looper'; do
		............................
		...........................
	  done

5. Array loop
	- When iterating through array we can't use a simple syntax because it will not take every value of array only takes first value
	- to iterate through all the values we use ' @ '. @ is called a subscript
	- there is also one subsript ' * ' it treate whole array as one big string
	- for _ in ${array[@]};
	  do
	  	---------------------------------
	  done

6. Argument
	- We can get inputs through arguments also 
	- Like if we write $1 then the first thing we write along side the script will be taken as argument
	- eg: command $1 $2