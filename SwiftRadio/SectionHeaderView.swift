//
//  SectionHeaderView.swift
//  SwiftRadio
//
//  Created by Nikita Lakeev on 23/06/2019.
//  Copyright © 2019 matthewfecher.com. All rights reserved.
//

import UIKit

class SectionHeaderView : UICollectionReusableView
{
    @IBOutlet weak var categoryTitleLabel: UILabel!
    
    var categoryTitle: String!{
        didSet {
            categoryTitleLabel.text = categoryTitle
        }
    }
}
