//
//  ViewController.swift
//  Project11
//
//  Created by Kei on 2020/09/16.
//  Copyright © 2020 Kei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var prefectureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func unwindPrev(segue:UIStoryboardSegue) {

    if let tableViewController = segue.source as? PrefectureTableViewController{
        if let indexPath = tableViewController.tableView.indexPathForSelectedRow{
            self.prefectureLabel.text = tableViewController.prefecture[indexPath.row]
        }
    }

    }

}
