import UIKit

struct Button3DColors {
    
    let front: UIColor
    let border: UIColor
    let bottom: UIColor
    
    static var aqua: Button3DColors { return Button3DColors(front: UIColor(r: 31, g: 187, b: 166),
                                                            border: UIColor(r: 45, g: 214, b: 191),
                                                            bottom: UIColor(r: 24, g: 151, b: 134)) }
    
    static var orange: Button3DColors { return Button3DColors(front: UIColor(r: 255, g: 144, b: 0),
                                                              border: UIColor(r: 255, g: 188, b: 0),
                                                              bottom: UIColor(r: 208, g: 105, b: 22)) }
    
    static var red: Button3DColors { return Button3DColors(front: UIColor(r: 255, g: 59, b: 48),
                                                           border: UIColor(r: 255, g: 94, b: 77),
                                                           bottom: UIColor(r: 189, g: 43, b: 34)) }
    
    static var purple: Button3DColors { return Button3DColors(front: UIColor(r: 142, g: 55, b: 251),
                                                              border: UIColor(r: 176, g: 72, b: 252),
                                                              bottom: UIColor(r: 95, g: 27, b: 181)) }
    
    static var disabled: Button3DColors { return Button3DColors(front: UIColor(r: 172, g: 172, b: 172),
                                                                border: UIColor(r: 222, g: 217, b: 217),
                                                                bottom: UIColor(r: 100, g: 100, b: 100)) }
}
