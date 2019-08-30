//
//  TMHomeBackView.swift
//  Tmall
//
//  Created by panzhijun on 2019/8/30.
//  Copyright © 2019 panzhijun. All rights reserved.
//

import SwiftUI

struct TMHomeBackView: View {
    
    @EnvironmentObject var home: HomeGlobal
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("loopbg")
                .resizable()
                .frame(height: 450)
                .background(loopData[home.index].backColor)
            
        }
        .offset(x: 0, y: self.home.offsetY <= 0 ? self.home.offsetY : 0)
    }
}

struct TMHomeBackView_Previews: PreviewProvider {
    static var previews: some View {
        TMHomeBackView().environmentObject(HomeGlobal())
    }
}
