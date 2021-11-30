//
//  ToDoCollectionViewCell.swift
//  ToDoVIP
//
//  Created by Ozan Barış Günaydın on 29.11.2021.
//

import UIKit

final class ToDoCollectionViewCell: UICollectionViewCell {
    
    /// Custom identifier for the collection view cell.
    static let identifier = "ToDoCollectionViewCell"
    
    /// Image for the slide image panel
    private let daysImage: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 110.0 / 2.0
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.systemBlue.cgColor
        imageView.isUserInteractionEnabled = true
        imageView.highlightedImage = .checkmark
        return imageView
    }()
    
    private let daysName: UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(daysImage)
        contentView.addSubview(daysName)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        daysImage.frame = CGRect(x: 0, y: 0, width: 110, height: 110)
        daysName.frame = CGRect(x: 0, y: 120, width: 120, height: 20)

    }
    
    public func configure(with name: String) {
        daysImage.image = UIImage(named: name)
        daysName.text = name.uppercased()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        daysImage.image = nil
    }
    
}
