# Flutter-relay_coding
for devfest 2021

# 코딩 전 페이지 먼저 추가하기
- 본 레포를 fork하여 자신 로컬에서 작업
- 인당 2개의 .dart 파일 생성
- 본레포/flutter_relay_coding_app/pager-sample/0102a_first.dart 파일을 복사하여 /page 폴더에 인당 2개씩 붙여넣기 후 수정
- 대소문자 유의 : 파일 이름은 모두 소문자, 클래스 이름은 대문자로 시작하는 낙타체(단어 시작 글자만 대문자)
- 2개 모두 파일의 이름과, 포함된 클래스를 아래와 같이 수정

  * 홀수의 경우 : 첫번째 생성파일 : 자기번호 두자리 + 뒷사람 번호 두자리 + 자기 테마 + (언더 바) + first.dar -> 파일 내 클래스는 Page + 자기번호 + 뒷사람번호 + 자기테마 + First
                 두번째 생성파일 : 자기번호 두자리 + 뒷사람 번호 두자리 + 뒷사람 테마 + (언더바) + second.dart -> 파일 내 클래스는 Page + 자기번호 + 뒷사람번호 + 뒷사람테마 + Second

  * 짝수의 경우 : 첫번째 생성파일 : 앞사람 번호 두자리 + 자기번호 두자리 + 자기 테마 + (언더 바) + first.dart -> 파일 내 클래스는 Page + 앞사람번호 + 자기번호 + 자기테마 + First
                 두번째 생성파일 : 앞사람 번호 두자리 + 자기번호 두자리 + 앞사람 테마 + (언더바) + second.dart -> 파일 내 클래스는 Page + 앞사람번호 + 자기번호 + 앞사람테마 + First

  예시로 만약,
  
  1 : 이원영 (A)
  2 : 한정우 (B)
  
  ++++++++++++++
  
  5 : 조준장 (C)
  6 : 추창우 (B)
  
  ++++++++++++++
  
  으로 배정되었다면 생성해야 할 파일은
  
  이원영 : 0102a_first.dart, 0102b_second.dart (각각의 파일 내의 클래스는 Page0102AFirst, Page0102BSecond)
  한정우 : 0102b_first.dart, 0102a_second.dart (각각의 파일 내의 클래스는 Page0102AFirst, Page0102BSecond)
  조준장 : 0506c_first.dart, 0506b_second.dart (각각의 파일 내의 클래스는 Page0506CFirst, Page0506BSecond)
  추창우 : 0506b_first.dart, 0506b_second.dart (각각의 파일 내의 클래스는 Page0506BFirst, Page0506CSecond)

꼭 flutter_relay_coding_app/pages 디렉토리에 넣어주시고! pull request 생성해주세요!

# 랜덤 배정 결과
