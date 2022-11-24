//
//  OnBoardView.swift
//  SnackOverFlow
//
//  Created by İsmail Ertuğlu on 19.11.2022.
//

import SwiftUI

struct OnBoardView: View {
    @StateObject var onBoardViewModel = OnBoardViewModel()
    
    /// Dummy list count
    /// - Returns: It will return length of the list
    func count() -> Int{
        OnBoardModel.items.count - 1
    }
    var body: some View {
        
        NavigationView {
            GeometryReader(content:{geometry in
                
                VStack{
                    Spacer()
                    
                    TabView(selection: $onBoardViewModel.currentIndex,content:{
                        ForEach((0...count()),id:\.self ,content: {value in
                            SliderCard(model: OnBoardModel.items[value], imageHeight: geometry.dh(height: 0.45))
                        })
                      
                    }).tabViewStyle(.page(indexDisplayMode: .never))
                       
                    Spacer()
                    
                    HStack{
                        
                        ForEach((0...2),id:\.self,content: {index in
                         
                            if(index == onBoardViewModel.currentIndex){
                                IndicatorRectangle(width: geometry.dw(width: 0.1))
                            }else{
                                IndicatorRectangle(width: geometry.dw(width: 0.04))
                            }
                        })
                        
                        
                    }.frame(height: geometry.dh(height: 0.015))
                    
                    NavigationLink(isActive: $onBoardViewModel.isHomeRedirect){
                        WelcomeView().ignoresSafeArea(.all) // Üst ve alttaki boşlukları kapatıyor
                            .toolbar(.hidden)// Sol üstteki geri tuşunu kapatıyor
                    } label: {
                        NormalButton(onTap: {
                            onBoardViewModel.saveUserLoginAndRedirect()
                        }, title: LocaleKeys.Buttons.getStarted.rawValue).padding(.all,PagePadding.All.normal.rawValue)
                    }.onAppear{
                        onBoardViewModel.checkUserFirstTime()
                    }
                }
            })
        }
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
