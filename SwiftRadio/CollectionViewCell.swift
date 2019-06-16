//
//  CollectionViewCell.swift
//  SwiftRadio
//
//  Created by Nikita Lakeev on 18/05/2019.
//  Copyright © 2019 matthewfecher.com. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var stationImage: UIImageView!
    @IBOutlet weak var StationName: UILabel!
    @IBOutlet weak var stationDescription: UILabel!
    
    var downloadTask: URLSessionDownloadTask?
    
    
    func configureStationCell(station: RadioStation) {
        
        // Configure the cell...
        StationName.text = station.name
        stationDescription.text = station.desc
        
        let imageURL = station.imageURL as NSString
        
        if imageURL.contains("http") {
            
            if let url = URL(string: station.imageURL) {
                stationImage.loadImageWithURL(url: url) { (image) in
                    // station image loaded
                }
            }
            
        } else if imageURL != "" {
            stationImage.image = UIImage(named: imageURL as String)
            
        } else {
            stationImage.image = UIImage(named: "stationImage")
        }
        
    }
    
    func configureSimpleStationCell(station: SimpleStation) {
        
        // Configure the cell...
        StationName.text = station.name
        stationDescription.text = station.desc
        
        let imageURL = station.imageURL as NSString
        
        if imageURL.contains("http") {
            
            if let url = URL(string: station.imageURL) {
                stationImage.loadImageWithURL(url: url) { (image) in
                    // station image loaded
                }
            }
            
        } else if imageURL != "" {
            stationImage.image = UIImage(named: imageURL as String)
            
        } else {
            stationImage.image = UIImage(named: "stationImage")
        }
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        downloadTask?.cancel()
        downloadTask = nil
        StationName.text  = nil
        stationDescription.text  = nil
        stationImage.image = nil
    }
}
