//
//  HomeViewController.swift
//  wudget v.0
//
//  Created by Vooka Bq on 1/31/15.
//  Copyright (c) 2015 Taylor Bergquist. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    let cellTableIdentifier = "CellTableIdentifier"
    @IBOutlet var tableView: UITableView!
    let matches = [
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"],
        ["The" : "AwayTeam", "@" : "HomeTeam"]
    ]
   
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.registerClass(TeamsMatchCellTableViewCell.self, forCellReuseIdentifier: cellTableIdentifier)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellTableIdentifier, forIndexPath: indexPath) as TeamsMatchCellTableViewCell
        
        let rowData = matches[indexPath.row]
        cell.team1 = rowData["The"]!
        cell.team2 = rowData["@"]!
        
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
