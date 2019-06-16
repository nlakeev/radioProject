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
struct SimpleStation: Codable {
    var name: String
    var streamURL: String
    var imageURL: String
    var color: String
    var text_color: String
    var shadow_color: String
    var desc: String
    
    init(name: String, streamURL: String, imageURL: String, color: String, text_color: String, shadow_color: String, desc: String) {
        self.name = name
        self.streamURL = streamURL
        self.imageURL = imageURL
        self.color = color
        self.text_color = text_color
        self.shadow_color = shadow_color
        self.desc = desc
    }
}

struct RadioStation: Codable {
    
    var name: String
    var streamURL: String
    var imageURL: String
    var color: String
    var text_color: String
    var shadow_color: String
    var desc: String
    var subStations: [SimpleStation]
    
    /*
    init(name: String, streamURL: String, imageURL: String, color: String, text_color: String, shadow_color: String, desc: String, subStations: SimpleStation) {
        self.name = name
        self.streamURL = streamURL
        self.imageURL = imageURL
        self.color = color
        self.text_color = text_color
        self.shadow_color = shadow_color
        self.desc = desc
        self.subStations = subStations
    }*/
}

extension RadioStation: Equatable {
    
    static func ==(lhs: RadioStation, rhs: RadioStation) -> Bool {
        return (lhs.name == rhs.name) && (lhs.streamURL == rhs.streamURL) && (lhs.imageURL == rhs.imageURL) && (lhs.desc == rhs.desc) && (lhs.color == rhs.color) && (lhs.text_color == rhs.text_color) && (lhs.shadow_color == rhs.shadow_color)
    }
}

extension SimpleStation: Equatable {
    static func ==(lhs: SimpleStation, rhs: SimpleStation) -> Bool {
        return (lhs.name == rhs.name) && (lhs.streamURL == rhs.streamURL) && (lhs.imageURL == rhs.imageURL) && (lhs.desc == rhs.desc) && (lhs.color == rhs.color) && (lhs.text_color == rhs.text_color) && (lhs.shadow_color == rhs.shadow_color)
    }
}
