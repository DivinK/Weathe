//
//  ContentView.swift
//  Weather2
//
//  Created by DivinK on 2021-10-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView(topColor: .black, botomColor: .red)
            
            VStack{
                CityNameTextView(cityName: "Västerås, Västmanland")
                Spacer()
                VStack{
                    WeatheMainView(imageNameSystem: "cloud.bolt.rain.fill", degre: 14, textColor: .white)
                }
                .padding(.bottom,40)
                HStack{
                    WeatherDayView(dayNem: "MAN", imageName: "cloud.moon.rain.fill", degr: 5, textColorNam: .white)
                    WeatherDayView(dayNem: "TUE", imageName: "cloud.moon.bolt.fill", degr: 7, textColorNam: .white)
                    WeatherDayView(dayNem: "WED", imageName: "moon.fill", degr: 10, textColorNam: .white)
                    WeatherDayView(dayNem: "THU", imageName: "cloud.bolt.fill", degr: 12, textColorNam: .white)
                    WeatherDayView(dayNem: "FRI", imageName: "moon.stars.fill", degr: 16, textColorNam: .white)
                    
                    
                    
                    
                }
                Spacer()
                
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundView: View{
    var topColor: Color
    var botomColor: Color
    var body: some View{
        LinearGradient(colors: [topColor,botomColor], startPoint:.bottomLeading, endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityNameTextView: View{
    var cityName: String
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
    
    
}

struct WeatheMainView: View{
    var imageNameSystem: String
    var degre: Int
    var textColor:Color
    var body: some View{
        Image(systemName: imageNameSystem)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
        Text("\(degre)°")
            .foregroundColor(textColor)
            .font(.system(size: 70, weight: .medium))
    }
}

struct WeatherDayView:View{
   
    var dayNem:String
    var imageName:String
    var degr:Int
    var textColorNam:Color
    var body: some View{
        VStack{
        Text(dayNem)
            .foregroundColor(textColorNam)
            .font(.system(size: 15, weight: .medium))
        Image(systemName: imageName)
            .renderingMode(.original)
            .resizable()
            .frame(width: 50, height: 50)
            .aspectRatio(contentMode: .fit)
        Text("\(degr)°")
            .foregroundColor(textColorNam)
            .font(.system(size: 20, weight: .medium))
        }
    }
}
