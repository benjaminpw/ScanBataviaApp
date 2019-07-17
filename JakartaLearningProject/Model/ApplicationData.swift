//
//  ApplicationData.swift
//  JakartaLearningProject
//
//  Created by Andi Ikhsan Eldrian on 16/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import Foundation

var data: [Data] = []

func loadData() -> [Data] {
    let data1: Data = Data(title: "Jakarta History Museum", description: "jak", image: "", thumbnail: "")
    let data2: Data = Data(title: "The Bank Indonesia Museum", description: "ind", image: "", thumbnail: "")
    let data3: Data = Data(title: "The Bank Mandiri Museum", description: "man", image: "", thumbnail: "")
    let data4: Data = Data(title: "The Wayang Museum", description: "String", image: "", thumbnail: "")
    let data5: Data = Data(title: "The Fine Arts and Ceramic Museum", description: "String", image: "", thumbnail: "")
    let data6: Data = Data(title: "Café Batavia", description: "String", image: "", thumbnail: "")
    let data7: Data = Data(title: "The Red Shop", description: "String", image: "", thumbnail: "")
    
    data = [data1, data2, data3, data4, data5, data6, data7]
    return data
}

struct Data {
    let title: String
    let description: String
    let image: String
    let thumbnail :String
}
