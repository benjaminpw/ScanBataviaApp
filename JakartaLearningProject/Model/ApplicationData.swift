//
//  ApplicationData.swift
//  JakartaLearningProject
//
//  Created by Andi Ikhsan Eldrian on 16/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import Foundation

var data: [PlaceData] = []

func loadData() -> [PlaceData] {
    let data1: PlaceData = PlaceData(title: "Jakarta History Museum", summary: "This building was once the city hall of Batavia (Dutch: Stadhuis van Batavia) which was built in 1707-1712 at the behest of the Governor-General Joan van Hoorn. On March 30, 1974, the building was later inaugurated as the Fatahillah Museum.", todo: """
        This Oud Batavia Museum features Dutch relics that settled in Batavia since the beginning of the XVI century. The collection consists of:

        1. Furniture
        2. Household furniture
        3. Weapons
        4. Ceramics
        5. Map
        6. Books
        """, information: """
        Work Hour
        Tue-Sun = 09.00-15.00 WIB
        Ticket Price:
        Child = Rp600
        College Student = Rp1.000
        Adult = Rp2000
        """, link: "https://id.wikipedia.org/wiki/Museum_Fatahillah", location: "", image: "0", thumbnail: "")
    let data2: PlaceData = PlaceData(title: "The Bank Indonesia Museum", summary: "The Bank Indonesia Museum is a museum in Jakarta, Indonesia, located on Jl. Pintu Besar Utara No.3, West Jakarta (in front of Beos Kota Station), by occupying the former area of ​​the Bank Indonesia City building which is a neo-classical cultural heritage of De Javasche Bank.", todo: """
        The museum provided information on how the Dutch East Indies monopolized the spice trade in the Indonesian archipelago, the Dutch East Indies banking system, currency conditions when Indonesia during the Japanese occupation until the 1997 economic crisis which became one of the causes of the May 1998 riots, a factor causing the collapse of the Orde Baru and downfall of the Suharto regime.

        Note:
        You can deposit your items in the locker room
        """, information: """
        Work Hour
        Open everyday except Monday
        Tue-Fri = 08.00-15.30 WIB
        Sat-Sun = 08.00-16.00 WIB
        Free Entry
        """, link: "https://id.wikipedia.org/wiki/Museum_Bank_Indonesia", location: "", image: "1", thumbnail: "")
    let data3: PlaceData = PlaceData(title: "The Bank Mandiri Museum", summary: "The Bank Mandiri Museum was built in 1998, at the beginning this building was Nederlandsche Handel-Maatschappij (NHM), NHM was Dutch Trading Company, and develop to be company in the banking sector.", todo: """
        The collection consist of many things that relate to banking activity and also its development
        """, information: """
        Work Hour
        Tue-Sunday = 09.00-16.00 WIB
        Monday and Public Holiday are closed
        Rp 2.000,00
        Free entry for Students, and Mandiri Banks customers
        """, link: "https://id.wikipedia.org/wiki/Museum_Bank_Mandiri", location: "", image: "2", thumbnail: "")
    let data4: PlaceData = PlaceData(title: "The Wayang Museum", summary: "The wayang Museum was built in 1640 under the name of the old Dutch Chruch. After the independence of Indonesia, the building was transferred to the Institute of Indonesian Culture.", todo: """
        The museum has a collection of various kind of Wayang, such as Javanese Wayang Kulit and Sundanese Wayang Golek. It has more than 5000 of wayangs collection
        """, information: """
        Work Hour:
        Everyday = 09.00-15.00 WIB
        Average Cost: Rp 5000,00 per person
        """, link: "https://en.wikipedia.org/wiki/Wayang_Museum", location: "", image: "3", thumbnail: "")
    let data5: PlaceData = PlaceData(title: "The Fine Arts and Ceramic Museum", summary: "The Fine Arts and Ceramic Museum was built in 1870, this building was used by Hindia Belanda government for Office of Justice Council at the Fortrees of Batavia (Ordinaris Raad van Justitie Binnen Het Kasteel Batavia). In 1990 this building used for The Fine Arts and Ceramic Museum.", todo: """
        The Facility in this building are Library, Arts museum, it provides book collection of Arts, and ceramics, and also there are Accesories Store, sells many Art things, from painting, ceramics, and earthenware.
        """, information: "", link: "", location: "", image: "4", thumbnail: "")
    let data6: PlaceData = PlaceData(title: "Café Batavia", summary: "In the beginning this cafe building was the residence of Dutch officials starting in 1850, then in 1993, the building was purchased by an Australian citizen named Graham James who made this building a fine dining restaurant.\nThere is one spot that is very interesting and becomes the prey of visitors, namely the wall on the second floor. There are around thousands of photo frames that are neatly displayed. All photos are private collections of cafe owners.", todo: """
        There is one spot that is very interesting and becomes the prey of visitors, namely the wall on the second floor. There are around thousands of photo frames that are neatly displayed. All photos are private collections of cafe owners.
        """, information: """
        Work Hour:
        Mon-Thu, Sun = 08.00-00.00 WIB
        Fri-Sat = 08.00-01.00 WIB
        Average Cost:
        Rp300.000 for two people
        """, link: "https://en.wikipedia.org/wiki/Cafe_Batavia", location: "", image: "5", thumbnail: "")
    let data7: PlaceData = PlaceData(title: "The Red Shop", summary: "Toko Merah (Indonesian 'Red Shop') is a Dutch colonial landmark in Jakarta Old Town, Indonesia. Built in 1730, it is one of the oldest buildings in Jakarta. The building is located on the west side of the main canal Kali Besar. The building's red color contributes to its current name.", todo: "", information: "", link: "", location: "", image: "6", thumbnail: "")
    
    data = [data1, data2, data3, data4, data5, data6, data7]
    return data
}

struct PlaceData {
    var title: String
    var summary: String
    var todo: String
    var information: String
    var link:String
    var location: String
    var image: String
    var thumbnail :String
}
