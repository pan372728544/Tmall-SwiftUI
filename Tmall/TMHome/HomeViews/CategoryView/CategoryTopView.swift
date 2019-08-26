//
//  CategoryTopView.swift
//  Tmall
//
//  Created by panzhijun on 2019/8/26.
//  Copyright © 2019 panzhijun. All rights reserved.
//

import SwiftUI

struct CategoryTopView: View {
     /// 分类数组
       var categorys = categoryData
    
       var body: some View {
           
           /// 横屏滚动
           ScrollView(.horizontal, showsIndicators: false) {
               
               /// 水平显示
               HStack(alignment: .top, spacing: 0) {
                   
                   /// 遍历列表
                   ForEach(categorys, id: \.self) { category in
                       /// 单个视图
                       CategorySingle(category: category)
                           .frame(width: 75, height: 70, alignment: .topLeading)


                       
                   }
               }
        
           }.padding(.init(top: 15, leading: 15, bottom: 0, trailing: 15))
              
       
       }
}

struct CategorySingle: View {
      // 分类模型数据
      var category: CategoryItem
      
      
      var body: some View {
          VStack {   // 垂直布局

             /// 分类图片
              Image(category.imageName)
                  .resizable()
                  .frame(width: 50, height: 50)
                  .clipShape(Circle())
              
              /// 分类名称
              Text(category.category)
                  .font(.system(size: 11))
                  .foregroundColor(.gray)
        

          }
      }
}

#if DEBUG
struct CategoryTopView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTopView()
    }
}
#endif
