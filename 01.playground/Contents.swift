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

// range
// 0...5
// 0, 1, 2, 3, 4, 5

// 0..<5
// 0, 1, 2, 3, 4
for i in 0...5 {
    print("i: \(i)")
}

for i in 0..<5 where i % 2 == 0{
    print("i: \(i)")
}

//var randomInts: [Int] = []
var randomInts: [Int] = [Int]()

for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)")
