//
//  ViewController.swift
//  CollapsibleSections
//
//  Created by Prof. Dr. Nunkesser, Robin on 10.03.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
        
    var reloadSections: ((_ section: Int) -> Void)?
    
    // MARK: - Methods
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reloadSections = { [weak self] (section: Int) in
              self?.tableView?.beginUpdates()
              self?.tableView?.reloadSections([section], with: .fade)
              self?.tableView?.endUpdates()
           }
        
        tableView?.estimatedRowHeight = 100
        tableView?.rowHeight = UITableView.automaticDimension
        tableView?.sectionHeaderHeight = 70
        tableView?.separatorStyle = .none
        
        tableView?.register(HeaderView.nib, forHeaderFooterViewReuseIdentifier: HeaderView.identifier)
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
        let cell = tableView.dequeueReusableHeaderFooterView(withIdentifier:
                                                                HeaderView.identifier) as! HeaderView
        let concreteSection = sections[section]
        cell.titleLabel?.text = concreteSection.sectionTitle
        cell.arrowLabel?.text = concreteSection.isCollapsed ? ">" : "V"
        cell.section = section
        cell.delegate = self
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

extension ViewController: HeaderViewDelegate {
    func toggleSection(header: HeaderView, section: Int) {
        let concreteSection = sections[section]
        if concreteSection.isCollapsible {
            // Toggle collapse
            let collapsed = !concreteSection.isCollapsed
            concreteSection.isCollapsed = collapsed
            header.setCollapsed(collapsed: collapsed)
            // Adjust the number of the rows inside the section
            reloadSections?(section)
        }
    }
    
    
}
