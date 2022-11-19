//
//  OnBoardView.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

struct OnBoardView: View {
    @State private var currentIndex: Int = 0
    
    /// Dummy list count
    /// - Returns: It will return length of the list
    func count() -> Int{
        OnBoardModel.items.count - 1
    }
    var body: some View {
        
        GeometryReader(content:{geometry in
            
            VStack{
                Spacer()
                
                TabView(selection: $currentIndex,content:{
                    ForEach((0...count()),id:\.self ,content: {value in
                        SliderCard(model: OnBoardModel.items[value], imageHeight: geometry.dh(height: 0.45))
                    })
                  
                }).tabViewStyle(.page(indexDisplayMode: .never))
                   
                Spacer()
                
                HStack{
                    
                    ForEach((0...2),id:\.self,content: {index in
                     
                        if(index == currentIndex){
                            IndicatorRectangle(width: geometry.dw(width: 0.1))
                        }else{
                            IndicatorRectangle(width: geometry.dw(width: 0.04))
                        }
                    })
                    
                    
                }.frame(height: geometry.dh(height: 0.015))
                
                
                NormalButton(onTap: {}, title: LocaleKeys.Buttons.getStarted.rawValue).padding(.all,PagePadding.All.normal.rawValue)
            }
        })
    }
}

private struct SliderCard: View {
    let model: OnBoardModel
    var imageHeight: Double
    var body: some View {
        VStack{
            Image(model.imageName).resizable().frame(height: imageHeight)
            Text(model.description)
                .font(.system(size: FontSizes.largeTitle,weight: .semibold))
                .multilineTextAlignment(.center)
                .frame(alignment: .center)
                .foregroundColor(.peach)
        }
       
    }
}

private struct IndicatorRectangle: View {
    var width: Double
    var body: some View {
        Rectangle().fill(.gray).cornerRadius(RadiusItems.normalRadius).frame(width: width)
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}
