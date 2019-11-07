import UIKit
import RxSwift

let disposeBag = DisposeBag()
let subject = PublishSubject<String>()


//subscribeが行われた後でないとeventが発生しない
subject.onNext("Issue1")

subject.subscribe { event in
    print(event)
}

subject.onNext("Issue2")
subject.onNext("Issue3")

//subject.dispose()

subject.onCompleted()

//disposeの後はeventが発生しない
//onCompletedの後もeventは発生しない
subject.onNext("Issue5")
