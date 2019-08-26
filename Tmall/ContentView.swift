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
       
         GeometryReader { geometry in
                  HStack(spacing: 10) {
                      Text("Left")
                          .frame(width: geometry.size.width / 2, height: 50)
                          .background(Color.yellow)
                      Text("Right")
                          .frame(width: geometry.size.width / 2, height: 50)
                          .background(Color.orange)
                  }
              }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
