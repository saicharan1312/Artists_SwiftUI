//
//  Artists View Model.swift
//  Artists_SwiftUI
//
//  Created by Sai Charan Thummalapudi on 7/9/24.
//

import Foundation
class DataFetch {
    var artistArr1: [Artist] = []
    func fetchingData(url: String, complete: @escaping ()->()) {
        APICall.sharedInstance.fetchDataFromAPI(for: ArtistsData.self, url: url) { data, error in
            if let data = data {
                self.artistArr1 = data.results
                print(self.artistArr1)
                complete()
            }
            else {
                print("Error while fetching decoded data")
                complete()
            }
        }
    }
}
