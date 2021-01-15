//
//  DashboardVC.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 30/05/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import UIKit

class DashboardVC: BaseVC {
    
    // Property
    @IBOutlet weak var horsesTableView: UITableView!
    
    let horses = ["Custom Button 1", "AutoScroll", "Constraint"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.horsesTableView.delegate = self
        self.horsesTableView.dataSource = self
        self.updateUI()
    }
    
    func updateUI() {
        self.title = "Powerful"
    }

}

//MARK: - DATASOURCE & DELEGATE TableView
extension DashboardVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //
        self.horses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = horses[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "horseCell-identifier", for: indexPath)
        cell.textLabel?.text = item
        return cell
    }
    
}

//MARK: -  DELEGATE TableView
extension DashboardVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.horsesTableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
        case 0:
            goTo(segue: .goToDetailHorse)
        case 1:
            goTo(segue: .goToAutoScroll)
        case 2:
            goTo(segue: .goToConstraint)
        default:
            ()
        }
    }
}
