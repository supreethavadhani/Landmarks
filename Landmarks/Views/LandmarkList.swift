//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Supreeth Avadhani on 3/24/22.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    @EnvironmentObject var modelData: ModelData
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
            NavigationView {
                List {
                    Toggle(isOn: $showFavoritesOnly){ Text("Favourites Only")
                    }
                    ForEach(filteredLandmarks){ landmark in
                        NavigationLink{
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
