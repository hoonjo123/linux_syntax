for a in {1..100}
do
    echo "HelloWorld$a"
done

mkdir mydir2
cd
touch johoon
for a in {1..100}
do
    echo "helloworld$a" >> johoon
done

for 문을 사용하여 helloworld1, helloworld2 등 100까지 
문구가 적힌 파일 생성
mydir2 디렉토리 생성
해당 디렉토리에서 파일생성
파일안에 helloworld1~helloworld100까지 입력
dir 을 체크해서 있으면 안만들고
있으면 만들고 

echo "start"
if [ -d "mydir2" ]; then
    cd mydir2
else
    mkdir mydir2
    cd mydir2
fi
if [ -f "test.txt" ]; then
    rm -rf test.txt
    touch test.txt
else
    touch test.txt
fi
for a in {1..100}
do
    echo "helloworld$a" >> test.txt
done
echo "end"