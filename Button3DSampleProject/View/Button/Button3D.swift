import UIKit

@IBDesignable
class Button3D: UIControl {
    
    @IBInspectable
    var title: String? {
        didSet { content.setTitle(title) }
    }
    
    @IBInspectable
    var fontSizeIPhone: CGFloat = 30 {
        didSet { content.setFontSize(valueFor(iPhone: fontSizeIPhone, iPad: fontSizeIPad)) }
    }
    
    @IBInspectable
    var fontSizeIPad: CGFloat = 40 {
        didSet { content.setFontSize(valueFor(iPhone: fontSizeIPhone, iPad: fontSizeIPad)) }
    }
    
    @IBInspectable
    var numberOfLines: Int = 1 {
        didSet { content.setNumberOfLines(numberOfLines) }
    }
    
    @IBInspectable
    var isShadowEnabled: Bool = true {
        didSet { isShadowEnabledDidChange() }
    }
    
    //MARK: UIControl overwritten properties

    override var isHighlighted: Bool {
        didSet { isHighlightedDidChange() }
    }
    
    override var isEnabled: Bool {
        didSet { isEnabledDidChange() }
    }
    
    private var layout: Button3DLayout!
    private var content: Button3DContent!
    private var colors: Button3DColors!
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setup()
    }
    
    func setLayout(_ layout: Button3DLayout) {
        
        self.layout = layout
        
        removeAllSubviews()
        addSubviewToBounds(layout)
    }

    func setContent(_ content: Button3DContent) {
    
        self.content = content
        
        layout.setContent(content)
    }
    
    func setColors(_ colors: Button3DColors) {
        
        self.colors = colors
        
        layout.setColors(getColorForCurrentState())
    }
        
    private func setup() {
        
        setupDefaultLayout()
        setupDefaultContent()
        setupDefaultColors()
        
        isEnabled = true
        isShadowEnabled = true
        
        backgroundColor = .clear
    }
    
    private func setupDefaultLayout() {
        setLayout(Button3DRectangularLayout())
    }
    
    private func setupDefaultContent() {
        setContent(Button3DContentWithImageAndLabel(contentSize: .normal))
    }
    
    private func setupDefaultColors() {
        setColors(.aqua)
    }
         
    private func isShadowEnabledDidChange() {
        layout.setShadowEnabled(isShadowEnabled)
    }
    
    private func isHighlightedDidChange() {
        layout.showAsPressed(isHighlighted)
    }
    
    private func isEnabledDidChange() {
        layout.setColors(getColorForCurrentState())
    }
    
    private func getColorForCurrentState() -> Button3DColors {
        return isEnabled ? colors : .disabled
    }
}

extension Button3D {
    
    override func prepareForInterfaceBuilder() {
        
        setNeedsLayout()
        layoutIfNeeded()
        
        layout.setNeedsLayout()
        layout.layoutIfNeeded()
        
        backgroundColor = .clear
    }
}
