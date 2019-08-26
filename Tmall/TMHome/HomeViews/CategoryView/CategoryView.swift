//
//  CategoryView.swift
//  Tmall
//
//  Created by panzhijun on 2019/8/26.
//  Copyright © 2019 panzhijun. All rights reserved.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        
        ZStack(alignment: .top) {
            Image("floor2")
              .resizable()
              .frame(height: 180)
            VStack(alignment: .center, spacing: 15) {
                CategoryTopView()
                CategoryBottomView()
                
            }

        }
  
        
    }
}

#if DEBUG
struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
#endif
