//
//  ToDoTableViewCell.swift
//  ToDoVIP
//
//  Created by Ozan Barış Günaydın on 29.11.2021.
//

import UIKit

/// Protocol for the providing data of isSelected for the checkBox
protocol ToDoTableViewCellDelegate: AnyObject {
    func checkBoxToggle(sender: ToDoTableViewCell)
}


final class ToDoTableViewCell: UITableViewCell {
    
    weak var delegate: ToDoTableViewCellDelegate?
    
    /// Custom cell indetifier
    static let identifier = "toDoCell"

    @IBOutlet weak var checkBox: UIButton!
    @IBOutlet weak var toDoText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func checkToggled(_ sender: UIButton) {
        delegate?.checkBoxToggle(sender: self)
    }
}
