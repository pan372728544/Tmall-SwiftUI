//
//  PageView.swift
//  Tmall
//
//  Created by panzhijun on 2019/8/23.
//  Copyright © 2019 panzhijun. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    
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
            
            PageViewBackColorView( item: loopData[currentPage])
                .frame(height: 560)
            
            PageViewController(currentPage: $currentPage, controllers: viewControllers)
                .background(Color.clear)
                .frame(height: 540)
            
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage).padding(.top,500)
            
        }


        

    
      }
}

#if DEBUG
struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(loopData.map { LoopCardView(loop: $0) })
    }
}
#endif
