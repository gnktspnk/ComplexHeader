//
//  ViewController.swift
//  ComplexHeader
//
//  Created by Gennadii Tsypenko on 09/08/2017.
//  Copyright © 2017 Gennadii Tsypenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let header : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "headerLights")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    
    let dataSourceArray = ["New-York",
                           "Tel-Aviv",
                           "Abu-Dabi",
                           "Kharkiv",
                           "Moscow",
                           "Minsk",
                           "New-York",
                           "Tel-Aviv",
                           "Abu-Dabi",
                           "Kharkiv",
                           "Moscow",
                           "Minsk"]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 25
        tableView.contentInset = UIEdgeInsetsMake(300, 0, 0, 0)
        tableView.scrollIndicatorInsets = UIEdgeInsetsMake(300, 0, 0, 0)
        header.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 300)
        view.addSubview(header)
        //navigationController?.navigationBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
       
        let offset = scrollView.contentOffset.y + 300    // zero
        let y = 300 - offset
        let height = min(max(y, 120), 400)
        
        header.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: height)
        
    }

}

