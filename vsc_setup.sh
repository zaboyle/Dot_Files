#FIRST ARGUMENT MUST BE THE NAME OF YOUR FILE YOU
#WISH TO MAKE THIS DEBUG SESSION FOR
#
#
#L represents launch file
#T for tasks file

#if no .vscode directory exists, make one
mkdir -p .vscode
L=".vscode/launch.json"
T=".vscode/tasks.json"
#the filename
FILE=$1
#cuts off the file extension from the inpputted file
EXECUTABLE=${1%.*}.exe

#make the launch file
echo "{\n\t\"version\": \"0.2.0\",\n\t\"configurations\": [\n\t\t{" > $L
echo "\t\t\t\"name\": \"(gdb) Launch\",\n\t\t\t\"type\": \"cppdbg\",\n\t\t\t\"request\": \"launch\"," >> $L
echo "\t\t\t\"program\": \"\${workspaceRoot}/$EXECUTABLE\",\n\t\t\t\"args\": [\n\t\t\t\t\"comma-separated-list-of-args-here\"\n\t\t\t]," >> $L
echo "\t\t\t\"stopAtEntry\": false,\n\t\t\t\"cwd\": \"\${workspaceFolder}\",\n\t\t\t\"environment\": []," >> $L
echo "\t\t\t\"externalConsole\": true,\n\t\t\t\"MIMode\": \"gdb\",\n\t\t\t\"miDebuggerPath\": \"C:/MinGW-CPTR-124/bin/gdb.exe\"," >> $L
echo "\t\t\t\"preLaunchTask\": \"build $EXECUTABLE\",\n\t\t\t\"setupCommands\": [\n\t\t\t\t{" >> $L
echo "\t\t\t\t\t\"description\": \"Enable pretty-printing for gdb\",\n\t\t\t\t\t\"text\": \"-enable-pretty-printing\"," >> $L
echo "\t\t\t\t\t\"ignoreFailures\": true\n\t\t\t\t}\n\t\t\t]\n\t\t}\n\t]\n}" >> $L

#make the task file
echo "{\n\t\"version\": \"2.0.0\",\n\t\"tasks\": [\n\t\t{\n\t\t\t\"label\": \"build $EXECUTABLE\"," > $T
echo "\t\t\t\"type\": \"shell\",\n\t\t\t\"command\": \"C:/MinGW-CPTR-124/bin/g++.exe\",\n\t\t\t\"args\": [" >> $T
echo "\t\t\t\t\"-g\",\n\t\t\t\t\"$FILE\",\n\t\t\t\t\"-o\",\n\t\t\t\t\"$EXECUTABLE\"\n\t\t\t]," >> $T
echo "\t\t\t\"group\": {\n\t\t\t\t\"kind\": \"build\",\n\t\t\t\t\"isDefault\": true\n\t\t\t}," >> $T
echo "\t\t\t\"problemMatcher\": \"\$msCompile\"\n\t\t}\n\t]\n}" >> $T