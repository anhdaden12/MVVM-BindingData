//
//  ViewController.swift
//  Rxswift-BindingData
//
//  Created by NgocNB on 11/16/20.
//  Copyright © 2020 NgocNB. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var rendingLabel: UILabel!
    @IBOutlet weak var countRendingLabel: UILabel!
    @IBOutlet weak var forRentLabel: UILabel!
    @IBOutlet weak var countForRentLabel: UILabel!
    @IBOutlet weak var modeButton: UISwitch!
    @IBOutlet weak var tableView: UITableView!
    
    
    var vm = ViewControllerVM()
    var disPose = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countRendingLabel.layer.cornerRadius = countRendingLabel.frame.size.height / 2
        countRendingLabel.layer.masksToBounds = true
        countForRentLabel.layer.cornerRadius = countForRentLabel.frame.size.height / 2
        countForRentLabel.layer.masksToBounds = true
        countRendingLabel.text = "\(vm.redingList.count)"
        countForRentLabel.text = "\(vm.forRentList.count)"
        tableView.register(UINib(nibName: "InfoTableViewCell", bundle: nil), forCellReuseIdentifier: "InfoTableViewCell")
         bindeData()
        rentTabSelected(index: 1)
    }
    
    
    func bindeData() {
        vm.isShow.subscribe(onNext: { _ in
            self.tableView.reloadData()
        }).disposed(by: disPose)
        
        vm.isRending.subscribe(onNext: { _ in
            self.tableView.reloadData()
        }).disposed(by: disPose)
    }
    
    func rentTabSelected(index: Int) {
        rendingLabel.textColor = index == 1 ? UIColor.blue : UIColor.lightGray
        forRentLabel.textColor = index != 1 ? UIColor.blue : UIColor.lightGray
    }

    @IBAction func rendingAction(_ sender: Any) {
        vm.isRending.accept(true)
        self.tableView.reloadData()
        rentTabSelected(index: 1)
    }
    
    @IBAction func forRentAction(_ sender: Any) {
        vm.isRending.accept(false)
        self.tableView.reloadData()
        rentTabSelected(index: 2)
    }
    @IBAction func changeModeAction(_ sender: Any) {
        modeButton.isOn = !modeButton.isOn
        vm.isShow.accept(!vm.isShow.value)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.isRending.value ? vm.redingList.count : vm.forRentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoTableViewCell", for: indexPath) as! InfoTableViewCell
        let obj = vm.isRending.value ? vm.redingList[indexPath.row] : vm.forRentList[indexPath.row]
        cell.bindCell(isShow: vm.isShow.value, obj: obj)
        return cell
    }
    
}
