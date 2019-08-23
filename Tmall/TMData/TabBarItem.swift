//
//  TabBarItem.swift
//  Tmall
//
//  Created by panzhijun on 2019/8/23.
//  Copyright © 2019 panzhijun. All rights reserved.
//

import SwiftUI
import CoreLocation

struct TabBarItem: Hashable, Codable, Identifiable {
    
    var id: Int
    
    var title: String
    
    var imgNormal: String
    
    var imgSelect: String

}

