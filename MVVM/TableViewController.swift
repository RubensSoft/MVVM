import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }

    private func setUpView() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
