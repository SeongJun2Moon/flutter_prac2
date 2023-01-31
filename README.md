## 소스코드 출처 : 코드팩토리의 플러터 프로그래밍
> https://github.com/codefactory-co/golden-rabbit-flutter-novice

### 참고
1. 위젯은 플러터의 객체이다.
2. 객체이름의 비교
  - 파이썬 OOP : 속성&메소드 < 클래스 < 컬렉션 [] () {}
  - 파이썬 OOP 추상 : 메소드 < 추상클래스 < x
  - 파이썬 FP : 상태&람다함수(함수 안에 함수) < 함수 < 모듈
  - 쿼리 : 스키마&로우 < 테이블 < 데이터베이스
  - js : 상태&이벤트(콜백함수) 컴포넌트 < 컨테이너(페이지)
  - 플러터 : 상태&메소드 < 상태위젯 < 스크린
  - 플러터 무상태 : 메소드 < 무상태위젯 < x
3. 상태패턴의 종류
    - 추상 팩토리 패턴: 기능만 정의
    - 빌더 패턴: return 생성자
    - 팩토리 메서드 패턴: 공장보고 상품파악 => of(context)
    - 프로토타입 패턴: clone
    - 싱글턴 패턴: static 생성자
4. 람다함수 표기법
  - 자바 () -> {}
  - JS () => {}
  - 파이썬 lambda:
  - 플러터 () {}
5. 자료구조의 종류 : 
   - 키값으로 구분 : 인덱스[](), 딕셔너리{}
   - horizon 방향: 
   - vertical 방향: 


### p.195
- webviewcontroller = 외부와 통신하는 클래스?
- 안드로이드 설정값 = AndroidManifest.xml, 아이폰 설정값 = Info.plist

### p.196
- 버튼은 콜백함수를 실행한다

### p.200
- 위젯은 상태와 무상태
- 상태위젯은 setState()가 있다

### p.221
- 스타일 (안드)material (애플)Cupertino

### p.223
- 베리어 : 흐림처리

### p.230
- 설정객체는 of(cntext)(=>팩토리메서드패턴) 이고, 디바이스에 의존한다. 예를 들어 MediaQuery 는 스크린크기 정보를 준다.

### p.255
- 디바이스의 움직임을 측정하려면 정규화 normalization 이 필요하다
- 이 정규화를 지원하는 패키지로는 shake, sensor_plus 가 있다.

### p.257
- 플러터가 공식적으로 추천하는 디렉토리명은 const, screen, component, model 4가지(기능별로 구분 => duckpage 패턴)

### p.260
- RootScreen 은 최상위 상태위젯이다

### p.264
- vsync 에서 v는 vertical 수직방향이다. h는 horizon 수평방향이다.

### p.271
- SettingScreen 위젯은 콜백함수의 설정값을 지정

### p.277
- 리스터는 옵저버패턴으로 IIFE 와 반대되는 Watcher 개념이다
- 보통 제너레이터와 개념적으로 일치한다.

### p.278
- UX는 사용자 경험으로 자이로스코프를 이용해 극대화시킨다.

### P.281
- 동영상플레이어는 HomeScreen 이 VideoPlayer 로 전환된다.
- 즉시실행 -> IIFE

### P.287
- 이미지처리는 갤러리 권한이 필요. 이에따라 두 버전용 설정값을 코딩한다.

### P.310
- 한번 빌드되면 다시 빌드되지 않는다 = 무상태

### P.311
- 무상태위젯의 변경없음 현상은 컨트롤러를 통해 리스너를 통해 setState()를 호출함으로써 해결된다.

### p.320
- 스택 위젯을 이용해서 위젯이에 위젯을 쌓을 수 있다.
- Positioned 위젯과 Align 위젯으로 정렬한다
* 5번 참고

### p.323
- WebRTC는 영상통화를 구현한다. 아고라 API

### p.325
- late Cameracontroller controller에서 late는 Lazy Loading = 초기화 미룸
- const a = () {}는 실행즉시 a 객첵가 생성되는 것이고, late는 선언은 되었지만 메모리 할당은 x
- async ~ await controller.initialize()로 반드시 초기화

### p.327
- CameraPreview 위젯을 사용하려면 CameraController를 입력해야 한다
- 웹 RTC는 중계용 서버가 필요. 개념적으론 CrossEntity. 요게 시그널링 서버
- 시그널링 서버 = 커스텀 가능. 근데 그냥 아고라씀.

### p.328, 329
- 내비게이션은 스택 구조(LIFO).
- 플러터는 네비게이션 스택의 가장 위에 위치한 위젯을 화면으로 보여준다.

### p.336
- 카메라와 마이크는 사용자에게 이용권한을 받아야한다. => requests() 사용

### p.337
- PermissionStatus 클래스에서 limited 아이폰에서만 해당되는 상태이다.
- late, final vs. const의 구조. => late 이후에 변경불가상태로 정하는 것이 final

### p.345
- Theme.of(context), Navigator.of(context) => 팩토리 메소드 패턴

### p.346
- 권한을 가져오는 작업은 비동기 프로그래밍이 필요하다. => async
- Future...는 어플이 다운됐을 때, 생성되는 것이 아니라, 그 화면이 랜더링될 때 빌드되는 것이다.
- 보통 디바이스에 의존적인 객체생성에 사용된다.

### p.348
- 캐싱은 데이터를 일시저으로 저장하고 기억하는 거.
- 화면깜박임 막음
- snapshot.hasData를 사용해서 로딩상태를 인지.

### p.355
- 뒤로가기 하려면 pop()

### p.356
- null = 작동하지마세요