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
        
        /// 导航总试图
        NavigationView {
            
            /// 整体叠加
            ZStack(alignment: .top) {
                
                /// 滚动视图
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .trailing, spacing: 0) {
                        /// 轮播图
                        PageView(loopData.map { LoopCardView(loop: $0) })
                        
                        /// 分类
                        CategoryView().padding(.top,10)
                        
                        /// 天猫会员店
                        MemberStoreView().padding(.top,-20)
                        
                        /// 限时抢购
                        FlashSaleView().padding(.top,-20)
                        
                        /// 天猫榜单
                        BestSaleView().padding(.top,-10)
                        
                        /// 热搜榜
                        HotSearchView()
                        
                        /// 主题精选
                        ThemeChoiceView()
                        
                        /// 猜你喜欢
                        RecommendView()
                        
                        
                    }
                        
                    .padding(.top,-280)
                }
                
                /// 顶部导航
                HomeNaviView()
                
            }
                /// 背景颜色
                .background(Color(red: 238/255.0, green: 238/255.0, blue: 238/255.0))
                /// 延伸到安全区域
                .edgesIgnoringSafeArea(.top)
            
        }

        
    }
}

#if DEBUG
struct TMHomeView_Previews: PreviewProvider {
    static var previews: some View {
        TMHomeView()
    }
}
#endif
