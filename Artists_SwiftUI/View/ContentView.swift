//
//  ContentView.swift
//  Artists_SwiftUI
//
//  Created by Sai Charan Thummalapudi on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var viewModelObj = DataFetch()
    @State var artistArr:[Artist] = []
    var body: some View {
        VStack {
            HStack {
                Text("Top Songs")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.leading,15)
                    .padding(.bottom)
                Spacer()
            }
            List {
                ForEach(artistArr.indices, id:\.self) { i in
                    HStack {
//                        Image(systemName: "music.note.list")
//                            .font(.largeTitle)
//                            .resizable()
//                            .frame(width: 145, height: 150)
//                            .padding(.vertical,15)

                        if let data = artistArr[i].artworkUrl60 {
                            DisplayImage(data: data)
                        }

                        VStack {
                            Text(artistArr[i].collectionName ?? "No Collection")
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(width: 250, height: 70, alignment: .leading)
                                .padding(.leading,10)
                            
                            Text(artistArr[i].artistName ?? "No Artist Name")
                                .font(.system(size: 18.5))
                                .fontWeight(.light)
                                .frame(width: 250, height: 20, alignment: .leading)
                                .padding(.leading,10)
                        }
                    }
                }
            }.padding(-10)
        }.onAppear {
            viewModelObj.fetchingData(url: "https://itunes.apple.com/search?term=a") {
                print("Data fetching complete")
                DispatchQueue.main.async {
                    artistArr = viewModelObj.artistArr1
                    print(artistArr)
                }
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DisplayImage: View {
    @State var data: String
    var body: some View {
        AsyncImage(url: URL(string: data)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 100, alignment: .leading)
        } placeholder: {
            ProgressView()
                .frame(width: 80, height: 100, alignment: .leading)
        }
    }
}
