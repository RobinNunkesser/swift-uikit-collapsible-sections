//
//  ViewController.swift
//  CollapsibleSections
//
//  Created by Prof. Dr. Nunkesser, Robin on 10.03.23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Types
    struct ViewModel {
        let title : String
        let subtitle : String
        init(title : String, subtitle : String) {
            self.title = title
            self.subtitle = subtitle
        } }
    
    // MARK: - Properties
    var items : [ViewModel] = [ViewModel(title:"Title 1", subtitle:"Subtitle 1"),
                               ViewModel(title:"Title 2",
                                         subtitle:"Subtitle 2")]
    // MARK: - Methods
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
                                                 "SubtitleCell",
                                                 for: indexPath)
        let item = items[indexPath.row]
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = item.subtitle
        return cell
    }
    
    
}

