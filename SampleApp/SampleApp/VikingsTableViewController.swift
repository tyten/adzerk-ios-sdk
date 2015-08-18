//
//  VikingsTableViewController.swift
//  SampleApp
//
//  Created by Ben Scheirman on 8/18/15.
//  Copyright (c) 2015 Adzerk. All rights reserved.
//

import UIKit

class VikingsTableViewController : UITableViewController {
    var vikings: [Viking]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vikings = VikingGenerator.generateVikings(40)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vikings.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(VikingCell.identifier) as! VikingCell
        let viking = vikings[indexPath.row]
        cell.nameLabel.text = viking.name
        cell.quoteLabel.text = viking.quote
        cell.vikingImageView.loadImageWithURL(viking.imageUrl)
        return cell
    }
}
