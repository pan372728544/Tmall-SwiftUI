//
//  ContentView.swift
//  Tmall
//
//  Created by panzhijun on 2019/8/23.
//  Copyright © 2019 panzhijun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showGreeting = true

       var body: some View {
           VStack {
               Toggle(isOn: $showGreeting) {
                   Text("Show welcome message")
               }.padding()

               if showGreeting {
                   Text("Hello World!")
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
