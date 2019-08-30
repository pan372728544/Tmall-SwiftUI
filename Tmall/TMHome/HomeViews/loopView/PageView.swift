//
//  PageView.swift
//  Tmall
//
//  Created by panzhijun on 2019/8/23.
//  Copyright © 2019 panzhijun. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    @EnvironmentObject var home: HomeGlobal
    var viewControllers: [UIHostingController<Page>] = [UIHostingController<Page>]()
    
    @State var currentPage = 0

    init(_ views: [Page]) {
        
        //          self.viewControllers = views.map { UIHostingController(rootView: $0) }
        
        /// 修改控制器颜色
        for item in views {
            let host = UIHostingController(rootView: item)
            host.view.backgroundColor = .clear
            self.viewControllers.append(host)
        }
        
    }

    var body: some View {
        
        ZStack(alignment: .top) {
            
            /// 滑动控制器视图
            PageViewController(currentPage: $currentPage, controllers: viewControllers)
                .background(Color.clear)
                .frame(height: 260)
            
            /// 页数标示
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage).padding(.top,220)
                .preference(key: PageKeyTypes.PreKey.self, value: [PageKeyTypes.PreData(index: currentPage)])
      
            
        }.onPreferenceChange(PageKeyTypes.PreKey.self) { values in
            self.home.index = values.first?.index ?? 0
        }
    }

}

/// preference类型
struct PageKeyTypes {
    
    /// preference 的value 类型
    struct PreData: Equatable{
        let index: Int

    }
    /// preference 的 key
    struct PreKey: PreferenceKey {
        static var defaultValue: [PreData] = []

        static func reduce(value: inout [PreData], nextValue: () -> [PreData]) {
            value.append(contentsOf: nextValue())
        }
        typealias Value = [PreData]

    }

}

#if DEBUG
struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(loopData.map { LoopCardView(loop: $0) }).environmentObject(HomeGlobal())
    }
}
#endif
