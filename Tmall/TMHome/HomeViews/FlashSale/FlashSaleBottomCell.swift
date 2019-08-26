//
//  FlashSaleBottomCell.swift
//  Tmall
//
//  Created by panzhijun on 2019/8/26.
//  Copyright © 2019 panzhijun. All rights reserved.
//

import SwiftUI

struct FlashSaleBottomCell: View {
    var body: some View {
        HStack {
            
            VStack {
                Text("为你推荐")
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(.black)
                Text("精选频道")
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
                
            }
            
            HStack {
                VStack {
                    Image("09")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                    Text("奢品")
                        .font(.system(size: 13))
                        .foregroundColor(.black)
                }
                VStack {
                    Image("10")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                    Text("上新")
                        .font(.system(size: 13))
                        .foregroundColor(.black)
                }
                VStack {
                    Image("11")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                    Text("试用")
                        .font(.system(size: 13))
                        .foregroundColor(.black)
                }
                VStack {
                    Image("12")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                    Text("福利社")
                        .font(.system(size: 13))
                        .foregroundColor(.black)
                }
               
                
                
            }.frame(height: 80)
        }
    }
}

#if DEBUG
struct FlashSaleBottomCell_Previews: PreviewProvider {
    static var previews: some View {
        FlashSaleBottomCell()
    }
}
#endif
