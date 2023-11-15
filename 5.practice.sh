practice3 start라는 문구 터미널에 출력
mydir3 폴더생성
폴더로 이동
해당폴더에서 file1부터 file100까지 100개의 파일을 만들고
해당파일마다 각각 hello wolrd from file1, hello world from file2..입력
각 파일마다 100개씩 똑같은 문구
pracetice complete 출력

mkdir mydir3
cd mydir3
for a in{1..100}
    do  


echo "practice3 start"
mkdir  mydir3
cd mydir3
for a in{1..100}; do
    echo "hello world from file$a" > file$a.txt
done
echo "practice complete"

mkdir mydir3
cd mydir3
for a in{1..100}; do
    echo "hello wolrd from file$a" >> file$a.txt
done
echo "practice complete"

echo " script start"
mkdir mydir3
cd mydir3
for a in {1..100}
do
    touch "file$a.txt"
    echo "hello world from file$a" >> file$a.txt
done
echo "script complete"



file_count=0
directory_count=0
else_count=0
for a in *  
# 현재위치에서 모든파일
do
    if [ -f $a ]; then
        ((file_count++))
    elif [ -d $a ]; then
        ((directory_count++))
    else
        ((else_count++))
    fi
done  

echo "file's count : $file_count"
echo "directory's's count : $file_count"
echo "else_count : $file_count"

