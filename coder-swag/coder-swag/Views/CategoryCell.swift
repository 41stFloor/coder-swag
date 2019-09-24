//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Jonah Travis on 9/23/19.
//  Copyright © 2019 Jonah Travis. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }
}
