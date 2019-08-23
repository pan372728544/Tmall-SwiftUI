//
//  ContentView.swift
//  Tmall
//
//  Created by panzhijun on 2019/8/23.
//  Copyright © 2019 panzhijun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       TMTabBarView([TMTabMainView(.home),TMTabMainView(.cat),TMTabMainView(.store),TMTabMainView(.me)], tabbars: tabBarData)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
