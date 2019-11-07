import UIKit
import RxSwift

let observable = Observable.just(1)
let observable2 = Observable.of(1,2,3)
let observavle3 = Observable.of([1,2,3])
let observable4 = Observable.from([1,2,3,4,5])


/////////////////////////////////////////

observavle3.subscribe { event in
    print(event)
}

observavle3.subscribe { event in
    if let element = event.element {
        print(element)
    }
}

/////////////////////////////////////////

observable4.subscribe {event in
    print(event)
}

observable4.subscribe { event in
    if let element = event.element {
        print(element)
    }
}

observable4.subscribe(onNext: {element in
    print(element)
})

/////////////////////////////////////////
