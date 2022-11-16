//
//  ContentView.swift
//  iQuote
//
//  Created by Siam Rahman on 2022-11-15.
//

import SwiftUI

struct ContentView: View {
    @State var countIdx : Int = 0
    @State var randNumber : Int = 0
    
    var quotes = ["Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.", "The way to get started is to quit talking and begin doing.", "If life were predictable it would cease to be life, and be without flavor.", "Life is what happens when you're busy making other plans.", "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success.", "It is during our darkest moments that we must focus to see the light.", "Whoever is happy will make others happy too.", "Spread love everywhere you go. Let no one ever come to you without leaving happier.", "The future belongs to those who believe in the beauty of their dreams.", "Don't judge each day by the harvest you reap but by the seeds that you plant.", "Always remember that you are absolutely unique. Just like everyone else.", "The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart."]
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack{
                Text("Welcome to iQuote! Click the button below to view a random quote.")
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 200)
                
                Text("'" + quotes[randNumber] + "'")
                    .padding(.bottom, 150.0)
                    .font(.system(size: 20))
                    .frame(width: 300, height: 300)
                
                HStack{
                    Button(action: {
                        getRandomNumber()
                    }, label: {
                        Text("Random Quote...").font(.system(size: 25))
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                            .border(.black)
                    })
                }
            }
            
        }
    }
    
    func getRandomNumber(){
        self.randNumber = Int.random(in: 0...11)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}


