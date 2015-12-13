//
//  ViewController.swift
//  Times Tables
//
//  Created by Antrromet on 12/13/15.
//  Copyright © 2015 Antrromet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    var value = 1
    
    @IBOutlet var tableView: UITableView!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        value = Int(slider.value)
        numLabel.text = "\(value)'s Table"
        tableView.reloadData()
    }
    
    @IBOutlet var numLabel: UILabel!
    
    @IBOutlet var slider: UISlider!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text = "\(value) X \(indexPath.row+1) = \(value * (indexPath.row+1))"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

