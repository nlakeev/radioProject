//
//  CollectionViewSmallCell.swift
//  SwiftRadio
//
//  Created by Nikita Lakeev on 07/06/2019.
//  Copyright © 2019 matthewfecher.com. All rights reserved.
//

import UIKit

class CollectionViewSmallCell: UICollectionViewCell {
    @IBAction func playCellButton(_ sender: Any) {
    }
    @IBOutlet weak var radioName: UILabel!
    @IBOutlet weak var radioDescription: UILabel!
    
    var downloadTask: URLSessionDownloadTask?
    
    
    func configureStationCell(station: RadioStation) {
        
        // Configure the cell...
        radioName.text = station.name
        radioDescription.text = station.desc
        
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        downloadTask?.cancel()
        downloadTask = nil
        radioName.text  = nil
        radioDescription.text  = nil
    }
}
