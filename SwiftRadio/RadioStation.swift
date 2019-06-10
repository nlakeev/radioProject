//
//  RadioStation.swift
//  Swift Radio
//
//  Created by Matthew Fecher on 7/4/15.
//  Copyright (c) 2015 MatthewFecher.com. All rights reserved.
//

import UIKit

//*****************************************************************
// Radio Station
//*****************************************************************

struct RadioStation: Codable {
    
    var name: String
    var streamURL: String
    var imageURL: String
    var color: String
    var text_color: String
    var shadow_color: String
    var desc: String
    var longDesc: String
    
    init(name: String, streamURL: String, imageURL: String, color: String, text_color: String, shadow_color: String, desc: String, longDesc: String = "") {
        self.name = name
        self.streamURL = streamURL
        self.imageURL = imageURL
        self.color = color
        self.text_color = text_color
        self.shadow_color = shadow_color
        self.desc = desc
        self.longDesc = longDesc
    }
}

extension RadioStation: Equatable {
    
    static func ==(lhs: RadioStation, rhs: RadioStation) -> Bool {
        return (lhs.name == rhs.name) && (lhs.streamURL == rhs.streamURL) && (lhs.imageURL == rhs.imageURL) && (lhs.desc == rhs.desc) && (lhs.longDesc == rhs.longDesc)
    }
}
