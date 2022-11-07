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

// 옵셔널이란?
// 값이 있는지 없는지 모른다.
// 값이 없다는 것을 nil이라고 함
var someVariable: Int? = nil

if someVariable == nil {
    someVariable = 90
}

// 업랩핑이란? 랩 즉 감싸져있는 것을 벗기는 것 (optional로 감싸져 있음)

// someVariable에 값이 있다면 otherVariable에 넣어서 쓰겠습니다.
if let otherVariable = someVariable {
    // 이렇게 하면 otherVariable은 옵셔널이 아니게 됨(언랩핑됨)
    print("언랩핑 되었다. 즉 값이 있다. otherVariable: \(otherVariable)")
} else {
    // 값이 없을때는 여기로 옴
    print("값이 없다.")
}

someVariable = nil

// someVarialbe에 값이 없다면 기본값으로 요놈을 넣겠다.
let myValue = someVariable ?? 10
print("myValue \(myValue)")

var firstValue: Int? = 30
var secondValue: Int? = 50
print("firstValue \(firstValue)")
print("secondValue \(secondValue)")

unwrap(firstValue)
unwrap(secondValue)
unwrap(nil)

// parameter: 이런식으로 넣는게 싫으면 언더바를 추가
func unwrap(_ parameter: Int?){
    print("upwrap() called")
    // 값이 없으면 리턴 해버린다. if let이랑 거의 똑같음
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}

