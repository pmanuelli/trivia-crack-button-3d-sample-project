import UIKit

class UserInterfaceIdiom {
    
    static var isRunningOnIPhone: Bool { UIDevice.current.userInterfaceIdiom == .phone }
}

func valueFor<T>(iPhone iPhoneValue: T, iPad iPadValue: T) -> T {
    return UserInterfaceIdiom.isRunningOnIPhone ? iPhoneValue : iPadValue
}
