import UIKit

class TableViewController: UITableViewController {
    
    private let webService = WebService()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }

    private func setUpView() {        
        webService.getArticles() { _ in }
    }
}
