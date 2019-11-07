import UIKit
import RxSwift
import RxCocoa

//////////////////////////////////////////////////

//let disposeBag = DisposeBag()
//let relay = BehaviorRelay(value: "Initial Value")
//
//relay.asObservable()
//    .subscribe {
//        print($0)
//}
//
//relay.accept("Hello World")

//////////////////////////////////////////////////

//let disposeBag = DisposeBag()
//let relay = BehaviorRelay(value: [String]())
//relay.accept(["Item 1"])
//
//relay.asObservable()
//    .subscribe {
//        print($0)
//}

//relay.accept("Hello World")

//////////////////////////////////////////////////

//let disposeBag = DisposeBag()
//let relay = BehaviorRelay(value: ["Item 1"])
//relay.accept(relay.value + ["Item 2"])
//
//relay.asObservable()
//    .subscribe {
//        print($0)
//}

//////////////////////////////////////////////////

let disposeBag = DisposeBag()
let relay = BehaviorRelay(value: ["Item 1"])
var value = relay.value
value.append("Item2")
value.append("Item3")

relay.accept(value)

relay.asObservable()
    .subscribe {
        print($0)
}
