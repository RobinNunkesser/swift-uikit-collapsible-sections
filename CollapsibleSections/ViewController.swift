//
//  ViewController.swift
//  CollapsibleSections
//
//  Created by Prof. Dr. Nunkesser, Robin on 10.03.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Methods
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

extension ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].sectionTitle
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let concreteSection = sections[section]
        if concreteSection.isCollapsible && concreteSection.isCollapsed {
            return 0
        }
        return concreteSection.sectionCells.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier:
                                                    "HeaderCell") as! HeaderCell
        let concreteSection = sections[section]
        cell.titleLabel?.text = concreteSection.sectionTitle
        return cell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
                                                    "SubtitleCell",
                                                 for: indexPath)
        let item = sections[indexPath.section].sectionCells[indexPath.row]
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = item.subtitle
        return cell
    }
    
}

extension ViewController : UITableViewDelegate {
    
}

