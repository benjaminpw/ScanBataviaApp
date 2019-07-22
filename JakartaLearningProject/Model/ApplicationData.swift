//
//  ApplicationData.swift
//  JakartaLearningProject
//
//  Created by Andi Ikhsan Eldrian on 16/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import Foundation
import MapKit

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
        Work Hour:
        Tue-Sun = 09.00-15.00 WIB

        Ticket Price:
        Child = Rp 600/person
        College Student = Rp 1.000/person
        Adult = Rp 2.000/person
        """, link: "https://id.wikipedia.org/wiki/Museum_Fatahillah", location: "", image: "0", thumbnail: "", isUnlocked: false, latitude: -6.135200, longitude: 106.813301, tips: """
-Don't make any disturbing noise
-No eat or drink inside
-Smoking / vape totally prohibited
-Take picture without any flash
-No Littering
-Watch your step !
-don't touch the museum essential property
-Keep using Snap-It, snap the other building or things!
""")
    
    let data2: PlaceData = PlaceData(title: "The Bank Indonesia Museum", summary: "The Bank Indonesia Museum is a museum in Jakarta, Indonesia, located on Jl. Pintu Besar Utara No.3, West Jakarta (in front of Beos Kota Station), by occupying the former area of ​​the Bank Indonesia City building which is a neo-classical cultural heritage of De Javasche Bank. The museum provided information on how the Dutch East Indies monopolized the spice trade in the Indonesian archipelago, the Dutch East Indies banking system, currency conditions when Indonesia during the Japanese occupation until the 1997 economic crisis which became one of the causes of the May 1998 riots, a factor causing the collapse of the Orde Baru and downfall of the Suharto regime.", todo: """
        The museum is designed to introduce the public to Bank Indonesia's role in Indonesian history, such as monetary policies and payment systems that change over time. The museum also provides visitors with an audio and visual experience on the history of currencies and trade in Indonesia from the pre-colonial era to the present state.

        Note:
        You can deposit your items in the locker room
        """, information: """
        Work Hour:
        Open everyday except Monday
        Tue-Fri = 08.00-15.30 WIB
        Sat-Sun = 08.00-16.00 WIB

        Ticket Price:
        Rp 5.000/person
        """, link: "https://id.wikipedia.org/wiki/Museum_Bank_Indonesia", location: "", image: "1", thumbnail: "", isUnlocked: true, latitude: -6.137159, longitude: 106.812989, tips: """
-Don't make any disturbing noise
-No eat or drink inside
-Smoking / vape totally prohibited
-Take picture without any flash
-No Littering
-Watch your step !
-don't touch the museum essential property
-Keep using Snap-It, snap the other building or things!
""")
    
    let data3: PlaceData = PlaceData(title: "The Bank Mandiri Museum", summary: "The Bank Mandiri Museum was built in 1998, at the beginning this building was Nederlandsche Handel-Maatschappij (NHM), NHM was Dutch Trading Company, and develop to be company in the banking sector.", todo: """
        The collection consist of many things that relate to banking activity and also its development
        """, information: """
        Work Hour:
        Tue-Sunday = 09.00-16.00 WIB
        Monday and Public Holiday are closed

        Ticket Price:
        Rp 2.000/person
        Free entry for Students, and Mandiri Banks customers
        """, link: "https://id.wikipedia.org/wiki/Museum_Bank_Mandiri", location: "", image: "2", thumbnail: "", isUnlocked: true, latitude: -6.138051, longitude: 106.813346, tips: """
-Don't make any disturbing noise
-No eat or drink inside
-Smoking / vape totally prohibited
-Take picture without any flash
-No Littering
-Watch your step !
-don't touch the museum essential property
-Keep using Snap-It, snap the other building or things!
""")
    
    let data4: PlaceData = PlaceData(title: "The Wayang Museum", summary: "The wayang Museum was built in 1640 under the name of the old Dutch Chruch. After the independence of Indonesia, the building was transferred to the Institute of Indonesian Culture.", todo: """
        The museum has a collection of various kind of Wayang, such as Javanese Wayang Kulit and Sundanese Wayang Golek. It has more than 5000 of wayangs collection
        """, information: """
        Work Hour:
        Everyday = 09.00-15.00 WIB

        Ticket Price:
        Rp 5.000/person
        """, link: "https://en.wikipedia.org/wiki/Wayang_Museum", location: "", image: "3", thumbnail: "", isUnlocked: true, latitude: -6.1347, longitude: 106.8124, tips: """
-Don't make any disturbing noise
-No eat or drink inside
-Smoking / vape totally prohibited
-Take picture without any flash
-No Littering
-Watch your step !
-don't touch the museum essential property
-Keep using Snap-It, snap the other building or things!
""")
    
    let data5: PlaceData = PlaceData(title: "The Fine Arts and Ceramic Museum", summary: """
        The building of the Fine Art and Ceramic Museum was completed on January 12, 1870, and was used as the Court of Justice which was known as Paleis van Justitie. In 1967, the building was used as the West Jakarta Mayor Office. The building was officially inaugurated as the Fine Art and Ceramic museum by president Soeharto on August 20, 1976.

        The Indonesian Painting Collection is organized into several rooms based on periodization, namely:
        - Raden Saleh's Period Room (works from 1880 - 1890)
        - Jelita Indies Room (1920s works)
        - Persagi Room (works of the 1930s)
        - Period of Japanese Occupation (works from the period 1942 - 1945)
        - Sanggar Establishment Room (works from 1945 - 1950)
        - Space Around the Birth of Academic Realism (works of the 1950s)
        - Indonesian New Art Space (works from 1960 - present)
        """, todo: """
        The Facility in this building are Library, Arts museum, it provides book collection of Arts, and ceramics, and also there are Accesories Store, sells many Art things, from painting, ceramics, and earthenware.
        """, information: """
        Work Hour:
        Tue-Sunday = 08.00-17.00 WIB
        Monday and Public Holiday are closed
        
        Ticket Price:
        Free
        """, link: "", location: "", image: "4", thumbnail: "", isUnlocked: true, latitude: -6.133666132, longitude: 106.808496766, tips: """
-Don't make any disturbing noise
-No eat or drink inside
-Smoking / vape totally prohibited
-Take picture without any flash
-No Littering
-Watch your step !
-don't touch the museum essential property
-Keep using Snap-It, snap the other building or things!
""")
    
    let data6: PlaceData = PlaceData(title: "Café Batavia", summary: "In the beginning this cafe building was the residence of Dutch officials starting in 1850, then in 1993, the building was purchased by an Australian citizen named Graham James who made this building a fine dining restaurant.", todo: """
        There is one spot that is very interesting and becomes the prey of visitors, namely the wall on the second floor. There are around thousands of photo frames that are neatly displayed. All photos are private collections of cafe owners.
        """, information: """
        Work Hour:
        Mon-Thu, Sun = 08.00-00.00 WIB
        Fri-Sat = 08.00-01.00 WIB

        Average Cost:
        Rp300.000 for two people
        """, link: "https://en.wikipedia.org/wiki/Cafe_Batavia", location: "", image: "5", thumbnail: "", isUnlocked: true, latitude: -6.134438, longitude: 106.812706, tips: """
-Don't make any disturbing noise
-No eat or drink inside
-Smoking / vape totally prohibited
-Take picture without any flash
-No Littering
-Watch your step !
-don't touch the museum essential property
-Keep using Snap-It, snap the other building or things!
""")
    
    let data7: PlaceData = PlaceData(title: "The Red Shop", summary: "Toko Merah (Indonesian 'Red Shop') is a Dutch colonial landmark in Jakarta Old Town, Indonesia. Built in 1730, it is one of the oldest buildings in Jakarta. The building is located on the west side of the main canal Kali Besar. The building's red color contributes to its current name.", todo: "The architecture of the red shop building is very artistic with a unique architectural style and emphasizes acculturation between Chinese style and classic. Just like the name “Toko Merah”, the building is very identical with red colour. This red colour isn't just covering the exterior area. Almost in all buildings, including in the interior area, covered in a red color. Added with carvings and decorations that also have a pretty attractive red color", information: """
        Work Hour:
        Everyday = 08.00-22.00 WIB

        Ticket Price:
        Rp 10.000/person
        """, link: "", location: "", image: "6", thumbnail: "", isUnlocked: true, latitude: -6.135932, longitude: 106.811317, tips: """
-Don't make any disturbing noise
-No eat or drink inside
-Smoking / vape totally prohibited
-Take picture without any flash
-No Littering
-Watch your step !
-don't touch the museum essential property
-Keep using Snap-It, snap the other building or things!
""")
    
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
    var isUnlocked: Bool
    var latitude: Float
    var longitude: Float
    var tips: String
}
