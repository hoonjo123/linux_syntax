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

    ##리눅스 2일차##

if문(조건문)
if[조건]; then
 #조건이 참일 때 실행할 명령
elif[다른조건]; then
 #첫 번째 조건이 거짓이고 다른 조건이 참일 때
else
 #모든 조건이 거짓일 때 실행할 명령

for문(반복문)
for 변수 in 항목들; do
 #반복할 명령
done

grep

파일 내에서 특정 패턴이나 문자열 검색
기본사용법
grep [옵션][패턴][파일명]
-r옵션 : 디렉토리 내 모든 파일에서 검색
-i옵션 : 대소문자 구분 없이 검색
-n옵션 : 라인수 출력
예시 : grep -rin"hello"mydir  rin든 rni든 상관없다고 함
hello문자열을 라인수와 함께 mydir폴더에서 대소문자 구분 없이 검색

파인드find 파일을 찾는 명령어
grep -rni "java".
find를 통해서 .java로 끝나는 파일목록 listing -> grep 찾는것

find

파일이나 디렉토리를 검색하여 위치 출력
기본사용법
find 경로 옵션 행동
-name옵션 : 파일명으로 검색
-type : 타입으로 검색(f는 파일, d디렉토리 등 파일타입으로 검색)
-exec,/,{}
exec : find로 찾은 결과에 대해 실행명령.
/:exec의 종료지점을 의미
{}:find로 찾은 대상이 담기는 공간

사용예시 find . -type f -name"*.txt" : 현재폴더에서 파일타입 중에 .txt로 끝나는 파일명 검색
활용예시 find . -name "*.txt" |xargs grep -n"hello"
|는 

find . -name "*.txt"
. 현재폴더에서 txt가 몇개 있는지
find . -name "*.txt" | xargs grep -rni
. 부분에 특정 폴더명을 넣어주면 ㅇㅋ

find . -name "*.txt" -exec grep -rni "hello" {} \;
# 그다지 추천하지 않는다. 파일 위치가 나오지 않음 파일명만 넘어오고

find . -name "*.txt" -exec cp -r {} ./testFolder \;

사용자와 그룹

root(슈퍼계정) 계정과 그 외의 계정으로 사용자는 구성됨.
sudo 키워드는 현재 계정에서 root권한을 이용하여 명령어를 실행하는 프로그램
sudo ls
sudo find
sudo grep
..
굳이 루트권한을 붙이지 않아도 괜찮다. 

apt-get install git
을 그냥 입력하면 오류가 발생한다.
루트계정의 권한을 빌려오는건 현재 계정의 비밀번호를 써야함
sudo apt-get install git
우분투에서 무언가를 다운받을 때는 apt-get 을 써야함

# 원격에 있는 어떠한 공간? 
apt-get _ 데비안계열
yum _ redhat, centos

자바 스프링에도 똑같은게 있다.

sudo apt-get update
sudo apt-get uprade
# 다운로드하는게 아니라 목록만 받는거닷

johoon@johoon-virtual-machine:~$ 권한관계 test
1. 권한없는 유저를 만든다.
2. 그룹에 속한 유저를 만든다.

사용자 만들기
sudo useradd -g johoon -d /home/newuser1 newuser1
# 새로운 유저를 만들면서 그룹지정 및 홈디렉토리까지 지정
sudo passwd newuser1
# 신규유저 패스워드 지정
sudo mkdir newuser1
# 홈에 새로운 디렉토리 생성
sudo su newuser1
# 신규유저로 계정 전환
exit
# 원래 계정으로 전환
newuser1은 johoon그룹에 속해 있지만 johoon은 아니다.
소유자:그룹:others
-rw-rw-r--
그룹한테는 read권한이 없는걸로 만들어보겠다.

4(r)2(w)1(x)
세가지의 권한을 다 가지면 7이 됨
실습)소유자에게는 읽기,실행그룹한테는 실행권한만 others 한테는 아무런권한x 
510
ex) chmod 510 test.txt _ cat test.txt _ 유저change_ cat test.txt

# su newuser1 엔터 후 전환하고자 하는 계정의 비밀번호를 입력
# 원래 사용자로 돌아오려면 exit
cat /etc/passwd
# 유저목록
sudo userdel newuser1
sudo userdel -r newuser1

chmod XXX test.txt
# 소유자 : 그룹 : others에 대해 권한은 부여
# 권한은 rwx(421)권한으로 구성
# 그러므로 chmod 777test.txt 형식으로 변경
# text.txt파일의 소유자, 그룹, other에게 rwxrwxrwx권한을 부여한다는 의미

    기호적 표기법
    chmod u유저+x test.txt _ 소유자에게 실행 권한 추가
    chmod g그룹-w test.txt _ 그룹의 쓰기권한 제거
    chmod o아더스=r test.txt _ 다른 사용자의 권한을 읽기만 가능하게 설정

유저에 write권한 더하기
그룹에서 실행권한 빼기
그외 에 read권한만 설정하기
    chmod u+w test.txt
    chmod g-x test.txt
    chmod o+r test.txt

파일 소유자와 그룹
    chown 소유자:소유그룹 파일명
        특정파일의 소유자와 그룹을 새롭게 부여하는 것
        chown newuser1:johoon test.txt
        -rwxr--r--  1 [newuser1] johoon   12 11월 15 15:11 test.txt

kill-9[PID] : 잘 안씀.. 깔끔하게 종료가 안 될 수가 있음.
# 프로세스 종료
ps 프로세스 목록조회
    -e 모든 프로세스
    -f Full format표시
        PID_프로세스ID, PPID_부모 프로세스 ID

sudo apt-get install openjdk-11-jdk
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl stop nginx

ps -e | grep -i "nginx"
# nginx 가 죽었을 경우가 있기에..
ps -ef | grep -i "nginx"
# ps -ef : PI를 찾아서 강제로 죽일 때

네트워크 관련
    ipconfig or ifconfig - ip정보 등 네트워크 설정정보 출력
    ping[hostname/ip] - 네트워크 연결상태 확인
    nc-zv (넷켓)또는 telnet : 특징 port까지 열려있는지 확인
        ex)nc -zv naver.com 443
    netstat : 현재 서버에 연결된 네트워크 정보 출력
    ssh : 원격 호스트와의 터미널 세션을 제공
        ex)ssh [username]@[hostname/ip]
    scp : 파일전송 
        ex)ssp [source][destination]

# 원격 호스트와의 터미널 세션을 제공 ex) ssh [username]@[hosrtname/ip]
ssh
# 파일 전송 ex) scp [source] [destination]
scp
# vi 에디터
# nano , vim 에디터도 많이 사용
# vi는 명령모드와 입력모드로 구성
vi [파일명]
# 입력모드
# i     : 현재 커서부터 입력
# o     : 다음줄 커서부터 입력
# x     : 현재 커서가 위치한 단어 삭제
# dd    : 현재 커서가 위치한 행 삭제
# yy    : 현재 커서가 위치한 행 복사
# p     : 현재 행 이후에 붙여넣기
# 명령모드
# esc
# 파일 저장
:w
# 저장없이 vi 종료
:q!
 # 저장후 vi 종료
:wq
# a 다음커서이동
# ctrl+b 한 페이지 위로 이동
# ctrl+f 한 페이지 아래로 이동
shift + g 맨 아래로
gg 맨 위로 