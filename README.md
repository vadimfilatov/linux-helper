if terminal output:

``./linux_starter_pack.sh: line 2: $'\r': command not found
./linux_starter_pack.sh: line 3: syntax error near unexpected token `$'{\r''
'/linux_starter_pack.sh: line 3: `function install() {``

enter this:

`sed -i 's/\r$//' ./script.sh`