//
//  TeamsMatchCellTableViewCell.swift
//  wudget v.0
//
//  Created by Vooka Bq on 1/31/15.
//  Copyright (c) 2015 Taylor Bergquist. All rights reserved.
//

import UIKit

class TeamsMatchCellTableViewCell: UITableViewCell {
    var team1: String = "" {
        didSet {
            if (team1 != oldValue) {
                team1Label.text = team1
            }
        }
    }
    var team2: String = "" {
        didSet {
            if (team2 != oldValue) {
                team2Label.text = team2
            }
        }
    }
    var team1Label: UILabel!
    var team2Label: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier:reuseIdentifier)
        
        let team1LabelRect = CGRectMake(0, 5, 70, 15)
        let team1Marker = UILabel(frame: team1LabelRect)
        team1Marker.textAlignment = NSTextAlignment.Right
        team1Marker.text = "The"
        team1Marker.font = UIFont.boldSystemFontOfSize(12)
        contentView.addSubview(team1Marker)
        
        let team2LabelRect = CGRectMake(0, 26, 70, 15)
        let team2Marker = UILabel(frame: team2LabelRect)
        team2Marker.textAlignment = NSTextAlignment.Right
        team2Marker.text = "@"
        team2Marker.font = UIFont.boldSystemFontOfSize(12)
        contentView.addSubview(team2Marker)
        
        let team1ValueRect = CGRectMake(80, 5, 200, 15)
        team1Label = UILabel(frame: team1ValueRect)
        contentView.addSubview(team1Label)
        
        let team2ValueRect = CGRectMake(80, 25, 200, 15)
        team2Label = UILabel(frame: team2ValueRect)
        contentView.addSubview(team2Label)
        
        
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
