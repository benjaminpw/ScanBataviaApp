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
    let data1: Data = Data(title: "Jakarta History Museum", description: "The Jakarta History Museum (Indonesian: Museum Sejarah Jakarta), also known as Fatahillah Museum or Batavia Museum, is located in the Old Town (known as Kota Tua) of Jakarta, Indonesia. The building was built in 1710 as the Stadhuis (city hall) of Batavia. Jakarta History Museum opened in 1974 and displays objects from the prehistory period of the city region, the founding of Jayakarta in 1527, and the Dutch colonization period from the 16th century until Indonesia’s Independence in 1945.", image: "0", thumbnail: "")
    let data2: Data = Data(title: "The Bank Indonesia Museum", description: "Bank Indonesia Museum (Indonesian Museum Bank Indonesia) is a bank museum located in Jakarta, Indonesia. It was founded by Bank Indonesia and opened on 21 July 2009. The museum is housed in a heritage building in Jakarta Old Town that had been the first headquarters of the Netherlands Indies gulden (De Javasche bank), the central bank of the Dutch East Indies. The bank was nationalized as Bank Indonesia in 1953, after Indonesia gained its independence. It is located next to Bank Mandiri Museum.", image: "1", thumbnail: "")
    let data3: Data = Data(title: "The Bank Mandiri Museum", description: "Bank Mandiri Museum (Indonesian Museum Bank Mandiri) is an economics museum located in the old banking district of Jakarta Old Town in northern Jakarta, Indonesia. The museum is housed in the former headquarters of the Netherlands Trading Society, one of the primary ancestor of ABN AMRO. The museum is closed on Mondays and public holidays. It is located next to Museum Bank Indonesia.", image: "2", thumbnail: "")
    let data4: Data = Data(title: "The Wayang Museum", description: "The Wayang Museum (Indonesian: Museum Wayang) is a museum dedicated to Javan wayang puppetry. The museum is located in Kota Tua, Jakarta, Indonesia. It is one of several museums and galleries facing the Fatahillah Square, which include Jakarta History Museum, Fine Art and Ceramic Museum, and Kota Post Office art gallery.", image: "3", thumbnail: "")
    let data5: Data = Data(title: "The Fine Arts and Ceramic Museum", description: "The building of the Fine Art and Ceramic Museum was completed on January 12, 1870, and was used as the Court of Justice (Dutch: de Raad van Justitie). The building was known as Paleis van Justitie. During the Japanese occupation, the building was used by KNIL and later after the independence of Indonesia, was used as the Indonesian military dormitory and as the logistic warehouse. In 1967, the building was used as the West Jakarta Mayor Office. In 1974, the building was used as an office for the Jakarta Museum and History Department. The building was officially inaugurated as the Fine Art and Ceramic museum by president Soeharto on August 20, 1976.", image: "4", thumbnail: "")
    let data6: Data = Data(title: "Café Batavia", description: "Cafe Batavia is a restaurant located in Kota Tua (Old Town), Jakarta, Indonesia. It is one of the colonial landmarks facing the square Taman Fatahillah. The building where Cafe Batavia is established is the second oldest building in the square, second only to the former City Hall building of Batavia, which had been reestablished as the Jakarta History Museum.", image: "5", thumbnail: "")
    let data7: Data = Data(title: "The Red Shop", description: "Toko Merah (Indonesian 'Red Shop') is a Dutch colonial landmark in Jakarta Old Town, Indonesia. Built in 1730, it is one of the oldest buildings in Jakarta. The building is located on the west side of the main canal Kali Besar. The building's red color contributes to its current name.", image: "6", thumbnail: "")
    
    data = [data1, data2, data3, data4, data5, data6, data7]
    return data
}

struct Data {
    let title: String
    let description: String
    let image: String
    let thumbnail :String
}
