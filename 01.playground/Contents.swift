// *****************
// ***** day01 ***** 조건문
// *****************
// 다크모드 여부
//var isDarkMode: Bool = false

//if (isDarkMode != true) {
//    print("다크모드아님")
//} else {
//    print("다크모드입니다.")
//}

//var title: String = isDarkMode ? "다크모드 입니다" : "다크모드 아닙니다."
//
//print("title: \(title)")

// *****************
// ***** day02 ***** 반복문
// *****************
// 콜렉션 : 데이터를 모아둔 것
// 배열, 셋, 딕셔너리, 튜플
// 배열
//var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//
//for item in myArray {
//    print("item: \(item)")
//}
//
//for item in myArray where item > 5 {
//    print("5보다 큰 수 \(item)")
//}
//
//for item in myArray where item % 2 == 0 {
//    print("짝수 \(item)")
//}

// *****************
// ***** day03 ***** 케이스나누기 enum
// *****************

// 학교 - 초, 중, 고
//enum School {
//    case elemetary, middle, high
//}
//
//let yourSchool = School.high
//print("yourSchool \(yourSchool)")
//
//enum Grade: Int {
//    case first = 1
//    case second = 2 // 케이스에 값 할당 가능
//}
//
//let yourGrade = Grade.second.rawValue // rawValue로 케이스에 할당된 값 꺼내올 수 있음
//print("yourGrade : \(yourGrade)")
//
//enum SchollDetail {
//    case elmentary(name: String)
//    case middle(name: String)
//    case high(name: String)
//
//    func getName() -> String {
//        switch self {
//        case .elmentary(let name):
//            return name
//        case let .middle(name):
//            return name
//        case .high(let name):
//            return name
//        }
//    }
//}
//
//let yourMiddleSchoolName = SchollDetail.middle(name: "지도중학교")
//print("yourMiddleSchoolName: \(yourMiddleSchoolName)")
//print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())")
 
// *****************
// ***** day04 ***** 반복문
// *****************

//// range
//// 0...5
//// 0, 1, 2, 3, 4, 5
//
//// 0..<5
//// 0, 1, 2, 3, 4
//for i in 0...5 {
//    print("i: \(i)")
//}
//
//for i in 0..<5 where i % 2 == 0{
//    print("i: \(i)")
//}
//
////var randomInts: [Int] = []
//var randomInts: [Int] = [Int]()
//
//for _ in 0..<25 {
//    let randomNumber = Int.random(in: 0...100)
//    randomInts.append(randomNumber)
//}
//
//print("randomInts: \(randomInts)")


// *****************
// ***** day05 ***** 옵셔널
// *****************

//// 옵셔널이란?
//// 값이 있는지 없는지 모른다.
//// 값이 없다는 것을 nil이라고 함
//var someVariable: Int? = nil
//
//if someVariable == nil {
//    someVariable = 90
//}
//
//// 업랩핑이란? 랩 즉 감싸져있는 것을 벗기는 것 (optional로 감싸져 있음)
//
//// someVariable에 값이 있다면 otherVariable에 넣어서 쓰겠습니다.
//if let otherVariable = someVariable {
//    // 이렇게 하면 otherVariable은 옵셔널이 아니게 됨(언랩핑됨)
//    print("언랩핑 되었다. 즉 값이 있다. otherVariable: \(otherVariable)")
//} else {
//    // 값이 없을때는 여기로 옴
//    print("값이 없다.")
//}
//
//someVariable = nil
//
//// someVarialbe에 값이 없다면 기본값으로 요놈을 넣겠다.
//let myValue = someVariable ?? 10
//print("myValue \(myValue)")
//
//var firstValue: Int? = 30
//var secondValue: Int? = 50
//print("firstValue \(firstValue)")
//print("secondValue \(secondValue)")
//
//unwrap(firstValue)
//unwrap(secondValue)
//unwrap(nil)
//
//// parameter: 이런식으로 넣는게 싫으면 언더바를 추가
//func unwrap(_ parameter: Int?){
//    print("upwrap() called")
//    // 값이 없으면 리턴 해버린다. if let이랑 거의 똑같음
//    guard let unWrappedParam = parameter else {
//        return
//    }
//    print("unWrappedParam: \(unWrappedParam)")
//}

// *****************
// ***** day06 ***** 클래스 vs 스트럭트
// *****************

//// 유튜버 (데이터) 모델 - struct / 구조체
//print("========= struct ========")
//struct YoutuberStruct {
//    var name: String
//    var subscribersCount: Int
//}
//
//var devJang = YoutuberStruct(name: "장영남", subscribersCount: 99999)
//
//var devJangClone = devJang
//
//// 복사를 하기 때문에 값을 변경, 훼손해도 다른 것에 영향을 주지 않는것을 알 수 있음 (다른 메모리 공간을 사용)
//print("devJangClone.name : \(devJangClone.name)")
//devJangClone.name = "홀롤로"
//print("값 넣은 후 devJangClone.name : \(devJangClone.name)")
//print("값 넣은 후 devJang.name : \(devJang.name)")
//
//
//// 클래스
//print("========= class ========")
//class YoutuberClass {
//    var name: String
//    var subscribersCount: Int
//
//    // 이니셜라이저(생성자), 시작한다 즉 메모리에 올린다
//    // init으로 매개변수를 가진 생성자 메소드를 만들어야 매개변수를 넣어서 그값을 가진 객체(오브젝트)를 만들 수 있다.
//    init(name: String, subscribersCount: Int) {
//        // 내가 가지고 있는 name을 외부에서 가져온 name(init의 파라미터)으로 하겠다
//        self.name = name
//        self.subscribersCount = subscribersCount
//    }
//}
//
//var devNam = YoutuberClass(name: "장영남", subscribersCount: 99999)
//var devNamClone = devNam
//// 클래스는 서로 연결되어 있음 (같은 메모리 공간을 바라보고 있음)
//print("devNamClone.name : \(devNamClone.name)")
//devNamClone.name = "홀롤로"
//print("값 넣은 후 devNamClone.name : \(devNamClone.name)")
//print("값 넣은 후 devNam.name : \(devNam.name)")

// *****************
// ***** day07 ***** 프로퍼티 옵저버
// *****************

//// 라이프 사이클 훅의 마운트되는 단계와 비슷
//var myAge = 0 {
//    willSet {
//        print("값이 설정될 예정이다. myAge: \(myAge)")
//    }
//    didSet {
//        print("값이 설정되었다. myAge: \(myAge)")
//    }
//}
//
//myAge = 10
//myAge = 20

// *****************
// ***** day08 ***** 함수 매개변수 이름
// *****************

//// 함수, 메소드 정의
//func myFunction(name: String) -> String{
//    return "안녕하세요 \(name)"
//}
//
//// 함수, 메소드를 호출한다. call
//myFunction(name: "영남")
//
//// 함수 내의 로직처리는 name으로 하지만 호출할때만 with으로 바꿈
//func myFunctionSecond(with name: String) -> String{
//    return "안녕하세요 \(name)"
//}
//
//myFunctionSecond(with: "영남이")
//
//// 호출할때 파라미터 이름 쓰기 싫으면 _앞에 쓰기
//func myFunctionThird(_ name: String) -> String{
//    return "안녕하세요 \(name)"
//}

// *****************
// ***** day09 ***** 제네릭
// *****************

//// 어떤것이든 넣을 수 있다는 뜻, 보통 SomeElement말고 T라고 하는데 가독성을 위해서
//struct MyArray<SomeElement> {
//    var elements: [SomeElement] = [SomeElement]()
//
//    init(_ elements: [SomeElement]) {
//        self.elements = elements
//    }
//}
//
//struct Friend {
//    var name: String
//}
//
//var mySomeArray = MyArray([1, 2, 3])
//print("mySomeArray: \(mySomeArray)")
//
//var myStirngArray = MyArray(["가", "나", "다"])
//print("myStirngArray: \(myStirngArray)")
//
//let friend_01 = Friend(name: "철수")
//let friend_02 = Friend(name: "영희")
//let friend_03 = Friend(name: "수잔")
//
//var myFriendsArray = MyArray([friend_01, friend_02, friend_03, 2])
//print("myFriendsArray: \(myFriendsArray )")

// *****************
// ***** day10 ***** 클로저
// *****************

////String을 반환하는 클로저
//let myName: String = {
//   // myName으로 들어간다
//    return "영남"
//}()
//
//print(myName)
//
//// 클로저 정의, string 매개변수를 받아서 string을 내놓는.
//let myRealName : (String) -> String = { (name: String) -> String in
//    return "개발하는 \(name)"
//}
//
//myRealName("영남이")
//
//// string을 받아서 내뱉는게 없는
//let myRealNameLogic : (String) -> Void = { (name: String) in
//    print("개발하는 \(name)")
//}
//
//myRealNameLogic("영남쓰")

// *****************
// ***** day11 ***** 매개변수로써 클로저
// *****************

//// completion 이라는 클로저를 매개변수로 가지는 메소드 정의
//func sayHi (completion: () -> Void) {
//    print("sayHi() called")
//
//    // completion 클로저 실행
//    completion()
//}
//
////메소드 호출부에서 이벤트 종료를 알 수 있다.
//sayHi(completion: {
//    print("까꿍 1")
//})
//
//sayHi() {
//    print("까꿍 2")
//}
//
//// 맨 마지막 매개변수가 클로저라면 생략 가능
//sayHi {
//    print("까꿍 3")
//}
//
//// 매개변수로서 데이터를 반환하는 클로저
//func sayHiWithName(completion: (String) -> Void) {
//    print("sayHiWithName() called")
//    // 클로저를 실행과 동시에 데이터를 반환
//    completion("오늘도 빡코딩 하자")
//}
//
//sayHiWithName(completion: { (comment: String) in
//    print("까꿍", comment)
//})
//
//// 자료형을 아니 줄일 수 있음
//sayHiWithName(completion: {comment in
//    print("까꿍", comment)
//})
//
//// 더 줄이기 가능
//sayHiWithName{ comment in
//    print("까꿍", comment)
//}
//
//// 더 줄이기 가능
//sayHiWithName{
//    print("까꿍", $0) // 첫번째 들어온 애부터 $0 $1 $2 ...
//}
//
//// 매개변수로서 데이터를 여러개 반환하는 클로저
//func sayHiWithFullName(completion: (String, String) -> Void) {
//    print("sayHiWithFullName() called")
//    // 클로저를 실행과 동시에 데이터를 반환
//    completion("오늘도 빡코딩 하자", "화이팅!")
//}
//
//sayHiWithFullName {first, second in
//    print("첫뻔째 \(first), 두번째: \(second)")
//}
//
//sayHiWithFullName{
//    print("첫번째: \($0), 두번째:\($1)")
//}
//
//// completion을 받기 싫을때도 있잖아 그럴땐
//func sayHiOptional (completion: (() -> Void)? = nil)  {
//    print("sayHiOptional() called")
//
//    // completion 클로저 실행
//    completion?()
//}
//
//sayHiOptional()
//sayHiOptional {
//    print("까꿍")
//}
//
//// (Int) -> String
//func transform(number: Int) -> String {
//    return "숫자 :\(number)"
//}
//
//var myNumbers : [Int] = [0, 1, 2, 3, 4, 5]
//
//var transformedNumbers = myNumbers.map { aNumber in
//    return "숫자: \(aNumber)"
//}

// *****************
// ***** day12 ***** 객체 생성자, 해체자
// *****************

//class MyFriend {
//
//    var name : String
//
//    // 생성자, 메모리에 올림
//    init(_ name: String = "이름없음") {
//        self.name = name
//        print("MyFriend가 메모리에 올라갔다")
//    }
//
//    // 해체자, 메모리에서 사라질때는 deinit이 실행됨
//    deinit{
//        print("메모리에서 사라짐")
//    }
//}
//
//let myFriend = MyFriend("영남") // 이 행동 자체가 메모리에 올라가게 됨 (init 실행됨)
//let aFriend = MyFriend()
//

// *****************
// ***** day13 ***** 상속
// *****************

class Friend {

    var name : String

    init(_ name: String) {
        self.name = name
    }

    func sayHi() {
        print("안녕?! 난 \(self.name) 라고 해")
    }
}


class BestFriend : Friend {
    // override를 통해 부모의 메서드를 가져온다
    override init(_ name:String) {
        
        // super키워드로 부모의 메서드를 사용
        super.init("베프 " + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let myFriend = Friend("영남")
let myBestFriend = BestFriend("장영남")
myFriend.sayHi()
myBestFriend.sayHi()
