import UIKit

class SampleViewController: UIViewController {

    @IBOutlet var renewByCurrencyButton: RenewAttemptsByCurrencyButton3D!
    @IBOutlet var orangeButton: OrangeButton3D!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        renewByCurrencyButton.set(image:#imageLiteral(resourceName: "credit"), amount: 50)
    }
    
    @IBAction func buttonTouched() {
        
        orangeButton.isEnabled.toggle()
        orangeButton.title = orangeButton.isEnabled ? "ENABLED" : "DISABLED"
    }
}

