# 사용자가 현재 위치해 있는 폴더 경로 출력
pwd

# 현재위치에서 파일, 폴더 목록
ls

# 현재위치에서 파일, 폴더 목록 + 자세히보고싶을 때
ls -l

# 현재위치에서 파일, 폴더 목록 + 자세히 + 숨길파일까지 보고 싶을 때
ls -al

# 디렉토리 생성
mkdir first_file_dir

#특정 디렉토리로 이동
cd first_file_dir

# 루트디렉토리 이동
cd /

# 다시 기존의 폴더로 이동
cd home/johoon/first_file_dir 

# 상위 폴더로 이동
# cd ..

# 비어있는 파일 만들기
touch hoon.txt

# 파일내용조회
cat hoon.txt

# 터미널창에 문자열 출력
echo "hello world"

# echo를 통해 파일에 write 하는 방법
echo "hello world" > hoon.txt

# >하나를 쓰면 덮어쓰기 모드이고, >> 두개를 쓰면 추가모드이다.

# 파일을 읽기 위해서는 <를 사용
# sort 명령어와 함께 많이 사용/문자정렬할때 사용함
sort < first_file.txt

# 히스토리 명령어를 통해 이전에 실행했던 명령어 조회
history

# 입력중인 명령창 정리하는 법
clear

# 모든 권한을 다 주겠다
chmod 777 파일명

# 리눅스 코딩 프로그램 여는법
nano 파일명.sh
.
# 스크립트 실행하는법
./myscript.shnano
##.은 현재폴더를 의미한다

# rm은 삭제 명령어. rm -r은 디렉토리까지 삭제
# rm -rf 는 디렉토리까지 묻지않고 삭제
rm -rf first_file_dir

# cp는 복사명령어
# cp 복사대상 복사된파일명(경로포함)
cp hoon.txt hoon_second_file.txt

# 폴더를 통째로 복사하는법
cp -r first_file second_file_dir

cp -r test_dir hoon_dir/second_dir

#mv는 이동명령어(r옵션 필요X)
# mv 이동대상 이동된 파일명(경로포함)
# mv 는 파일명을 변경하는데도 많이 사용된다.
mv test_dir hoon_dir/second_dir

# head 상위 10개 
# tail  하위 10개  

# cd - 이전에 있었던 폴더로 이동