//
//  TMHomeView.swift
//  Tmall
//
//  Created by panzhijun on 2019/8/23.
//  Copyright © 2019 panzhijun. All rights reserved.
//

import SwiftUI

struct TMHomeView: View {
    
 
    
    
    var body: some View {

        /// 整体叠加
        ZStack(alignment: .top) {
            
            /// 滚动视图
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .trailing, spacing: 0) {
                    /// 轮播图
                    PageView(loopData.map { LoopCardView(loop: $0) })
                    
                    ZStack (alignment: .top) {
                        /// 分类
                        CategoryView()
                        
                        /// 天猫会员店
                        MemberStoreView().padding(.top,148)
                        
                        /// 限时抢购
                        FlashSaleView().padding(.top,310)
                    }
      
                }
                .edgesIgnoringSafeArea(.all)
                .offset(x: 0, y: -320)
            }
       
            
            /// 顶部导航
            HomeNaviView()

        }
        .background(Color(red: 238/255.0, green: 238/255.0, blue: 238/255.0))
        
       
        
    }
}

#if DEBUG
struct TMHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TMHomeView()
    }
}
#endif
