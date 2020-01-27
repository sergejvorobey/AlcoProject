//
//  MainTableViewController.swift
//  AlcoProject
//
//  Created by Sergey Vorobey on 25/01/2020.
//  Copyright © 2020 Сергей. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    // кол-во ячеек
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return drinks.count
    }
    // индификатор ячейки "Cell", и говорим какой класс отвечает за инфу в ячейки 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = drinks[indexPath.row].name
        cell.detailsLabel.text = drinks[indexPath.row].details
        cell.alcoholLevelLabel.text = drinks[indexPath.row].alcoholLevel + "%"
        
        //tableView.rowHeight = UITableView.automaticDimension

        return cell
    }
}

