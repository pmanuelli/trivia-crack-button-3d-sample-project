import UIKit

class Button3DContentWithImageAndLabel: UIView, Button3DContent {

    @IBOutlet private var titleLabel: Button3DLabel!
    @IBOutlet private var iconImageView: UIImageView!
    
    init(contentSize: ContentSize) {
        super.init(frame: .zero)
        
        setup(nibName: contentSize.nibName)
    }
    
    required init?(coder: NSCoder) { return nil }
    
    func setup(nibName: String) {

        addNibAsSubview(nibName: nibName)
        
        setImage(nil)
    }
    
    func setImage(_ image: UIImage?) {
        
        iconImageView.image = image
        iconImageView.isHidden = image == nil
    }
    
    enum ContentSize: String {
    
        case normal = "Normal"
        case small = "Small"
        case tiny = "Tiny"
        
        fileprivate var nibName: String { return "Button3DContentWithImageAndLabel\(self.rawValue)"}
    }
}

extension Button3DContentWithImageAndLabel {
    
    func setTitle(_ title: String?) {
        titleLabel.text = title
    }
    
    func setFontSize(_ fontSize: CGFloat) {
        titleLabel.setFontSize(fontSize)
    }
    
    func setNumberOfLines(_ numberOfLines: Int) {
        titleLabel.numberOfLines = numberOfLines
    }
}
