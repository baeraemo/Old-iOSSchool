------------------------------터미널을 이용하여 git 이용하는 명령어-------------------------------------

mkdir - 폴더 만들기

cd (폴더이름) : 이동 , (~) : 처음 시작 폴더로 가기 

open : 현재 있는 폴더를 창으로 띄우기

ls : 리스트 보기 , (-a) : 숨김파일보기 

vi (파일이름) . (확장자) : 파일 만들기

- 창이 열린 후 i 버튼으로 입력가능으로 바꾸고 다 입력 후 esc 그리고 : wq 저장 후 나가기

  또는 : q! 으로 저장 하지 않고 나가기가 가능하다

git add . : 모든 파일 등록

git commit : 이 파일에 대해 설명을 적기 

- git commit -m "xxxxxx"
- 항상 다른 누군가가 작업이 끝나면 add와 commit 잊지않기

git status : 파일이 준비 되었는지 확인

git branch : 현재에서 develop를 만든다

git merge (develop or master name) : 현재에서 다른쪽과 합치기

git  remote : 추가한 원격 저장소 확인

- add 파일이름 : 원격저장소 만들기

git push origin (master or branch) : 지정한 곳 업로드 하기

vi gitignore : 쓸대 없는거 업로드 하지않게 만들기

- gitignore.io 사이트에서 swift , xcode, cocoapods 지정해서 소스 받고 파일에 넣기 

rm -rf (파일명) : 해당파일 삭제

git reflog : 로그 기록 보기