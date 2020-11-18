//
//  MockdataModel.swift
//  Rxswift-BindingData
//
//  Created by NgocNB on 11/16/20.
//  Copyright © 2020 NgocNB. All rights reserved.
//

import Foundation
import UIKit



class RentModel: NSObject {
    var isRent: Bool
    var name: String
    var des: String
    var money: String
    var date: String
    
    init(isRent: Bool,name: String,des: String, money: String, date: String) {
        self.isRent = isRent
        self.name = name
        self.des = des
        self.money = money
        self.date = date
    }
}

let mockData = [
    RentModel(isRent: true, name: "Anh Nam", des: "vay đi đám cưới Tuân thủ nghiêm các quy luật cơ bản trình bày trên đây sẽ giúp chúng ta suy nghĩ và trình bày tư tưởng của mình một cách rõ ràng, chính xác, ngắn gọn", money: "100.000", date: "01/01/1970"),
    RentModel(isRent: true, name: "Anh Hung", des: "vay tiên mua gaotượng này cũng phải có nguyên nhân của nó, và nguyên nhân đó là nguyên nhân vật chất", money: "200.000", date: "01/01/1971"),
    RentModel(isRent: true, name: "Anh Long", des: "vay tiền xây nhàcủa mình một cách rõ ràng, chính xác, ngắn gọn, mạch lạc, dễ hiểu.", money: "300.000", date: "01/01/1972"),
    RentModel(isRent: true, name: "Anh Nhat", des: "vay đi nhậu ơ HN Vì sao châu chấu bay thành đàn?", money: "400.000", date: "01/01/1973"),
    RentModel(isRent: true, name: "Anh Hoang", des: "vay mua ôtoVì sao trong cây có điện?", money: "500.000", date: "01/01/1974"),
    RentModel(isRent: true, name: "Anh Tung", des: "vay đi máy bayTại sao tai biết tiếng động từ đâu dội tới?", money: "600.000", date: "01/01/1975"),
    RentModel(isRent: true, name: "Anh Tuan", des: "vay đi du lịchChim sẻ ăn hạt, vì sao nuôi con bằng sâu?", money: "600.000", date: "01/01/1976"),
    RentModel(isRent: true, name: "Anh Minh", des: "vay đi đám maVì sao ở vùng núi có nhiều khoáng sản kim loại?", money: "700.000", date: "01/01/1977"),
    RentModel(isRent: true, name: "Anh Trung", des: "vay sửa ôtôThực vật có chứa hoóc môn động vật không?", money: "800.000", date: "01/01/1978"),
    RentModel(isRent: true, name: "Anh Kien", des: "vay đi việnLàm thế nào để biết một hòn đá là thiên thạch?", money: "900.000", date: "01/01/1979"),
    RentModel(isRent: true, name: "Anh Nam", des: "vay đi đám cưới Tuân thủ nghiêm các quy luật cơ bản trình bày trên đây sẽ giúp chúng ta suy nghĩ và trình bày tư tưởng của mình một cách rõ ràng, chính xác, ngắn gọn", money: "100.000", date: "01/01/1970"),
    RentModel(isRent: true, name: "Anh Hung", des: "vay tiên mua gaotượng này cũng phải có nguyên nhân của nó, và nguyên nhân đó là nguyên nhân vật chất", money: "200.000", date: "01/01/1971"),
    RentModel(isRent: true, name: "Anh Long", des: "vay tiền xây nhàcủa mình một cách rõ ràng, chính xác, ngắn gọn, mạch lạc, dễ hiểu.", money: "300.000", date: "01/01/1972"),
    RentModel(isRent: true, name: "Anh Nhat", des: "vay đi nhậu ơ HN Vì sao châu chấu bay thành đàn?", money: "400.000", date: "01/01/1973"),
    RentModel(isRent: true, name: "Anh Hoang", des: "vay mua ôtoVì sao trong cây có điện?", money: "500.000", date: "01/01/1974"),
    RentModel(isRent: true, name: "Anh Tung", des: "vay đi máy bayTại sao tai biết tiếng động từ đâu dội tới?", money: "600.000", date: "01/01/1975"),
    RentModel(isRent: true, name: "Anh Tuan", des: "vay đi du lịchChim sẻ ăn hạt, vì sao nuôi con bằng sâu?", money: "600.000", date: "01/01/1976"),
    RentModel(isRent: true, name: "Anh Minh", des: "vay đi đám maVì sao ở vùng núi có nhiều khoáng sản kim loại?", money: "700.000", date: "01/01/1977"),
    RentModel(isRent: true, name: "Anh Trung", des: "vay sửa ôtôThực vật có chứa hoóc môn động vật không?", money: "800.000", date: "01/01/1978"),
    RentModel(isRent: true, name: "Anh Kien", des: "vay đi việnLàm thế nào để biết một hòn đá là thiên thạch?", money: "900.000", date: "01/01/1979"),
    
    RentModel(isRent: false, name: "Anh Tung", des: "vay đi máy bay", money: "600.000", date: "01/01/1975"),
    RentModel(isRent: false, name: "Anh Kien", des: "vay đi viện", money: "900.000", date: "01/01/1979"),
    RentModel(isRent: false, name: "Anh Hung", des: "vay tiên mua gao", money: "200.000", date: "01/01/1971"),
    RentModel(isRent: false, name: "Anh Long", des: "vay tiền xây nhà", money: "300.000", date: "01/01/1972"),
    RentModel(isRent: false, name: "Anh Tuan", des: "vay đi du lịch", money: "600.000", date: "01/01/1976"),
    RentModel(isRent: false, name: "Anh Minh", des: "vay đi đám ma", money: "700.000", date: "01/01/1977"),
    RentModel(isRent: false, name: "Anh Trung", des: "vay sửa ôtô", money: "800.000", date: "01/01/1978"),
    RentModel(isRent: false, name: "Anh Nam", des: "vay đi đám cưới", money: "100.000", date: "01/01/1970")
//    RentModel(isRent: false, name: "Anh Nhat", description: "vay đi nhậu ơ HN", money: "400000", date: "01/01/1973"),
//    RentModel(isRent: false, name: "Anh Hoang", description: "vay mua ôto", money: "500000", date: "01/01/1974")
]
