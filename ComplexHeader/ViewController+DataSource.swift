//
//  ViewController+DataSource.swift
//  ComplexHeader
//
//  Created by Gennadii Tsypenko on 31/08/2017.
//  Copyright © 2017 Gennadii Tsypenko. All rights reserved.
//

import UIKit

extension ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RegularCell.cellId, for: indexPath) as? RegularCell else {return UITableViewCell()}
        
        cell.textLabel?.text = dataSourceArray[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.detailTextLabel?.numberOfLines = 0
            cell.detailTextLabel?.text = "description 1 description 1 description 1 description 1 description 1 description 1 description 1 description 1 description 1"
            cell.imageView?.image = #imageLiteral(resourceName: "israel")
        }else{
            cell.detailTextLabel?.text = "description 2"
            cell.imageView?.image = #imageLiteral(resourceName: "united-states-of-america")
        }
        
        return cell
    }
    
}
