//
//  ViewControllerVM.swift
//  Rxswift-BindingData
//
//  Created by NgocNB on 11/18/20.
//  Copyright © 2020 NgocNB. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa



class ViewControllerVM {
    var isShow = BehaviorRelay<Bool>(value: false)
    var isRending = BehaviorRelay<Bool>(value: true)
    var redingList = mockData.filter{$0.isRent}
    var forRentList = mockData.filter{!$0.isRent}
}
