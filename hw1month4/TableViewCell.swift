//
//  TableViewCell.swift
//  hw1month4
//
//  Created by Ahmed Muvaza on 28/3/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    static let id = String(describing: TableViewCell.self)

    @IBOutlet private weak var newsImage: UIImageView!
    @IBOutlet private weak var descriptionlabel: UILabel!
    @IBOutlet private weak var nameLabel: UILabel!
     
    func display(item: News) {
        newsImage.image = UIImage(named: item.image)
        descriptionlabel.text = item.desctript
        nameLabel.text = item.name
    }
    
    
}
