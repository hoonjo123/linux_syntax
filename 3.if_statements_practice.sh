mkdir mydir
cd mydir
touch first.txt second.txt
file_name="first.txt"
if [ -f first.txt ]; then
    echo "$file_name exist"
else
    echo "$file_name does not exist"
fi

# 공백을 꼭 적자
