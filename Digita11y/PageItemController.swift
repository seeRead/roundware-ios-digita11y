//http://swiftiostutorials.com/ios-tutorial-using-uipageviewcontroller-create-content-slider-objective-cswift/

import UIKit

class PageItemController: UIViewController {

    // MARK: - Variables

    var itemIndex: Int = 0
    var imageName: String = "" {
        didSet {
            //TODOsoon grab image
            //TODOsoon set image alt
            if let imageView = contentImageView {
                imageView.image = UIImage(named: imageName)
            }

        }
    }

    // MARK: Outlets and Actions

    @IBOutlet var contentImageView: UIImageView?

    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImageView!.image = UIImage(named: imageName)
    }
}
