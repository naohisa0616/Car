//
//  ViewController.swift
//  Car
//
//  Created by 宮崎直久 on 2019/12/08.
//  Copyright © 2019 宮崎直久. All rights reserved.
//

import UIKit

//書式　クラスプロパティ（タイププロパティ）の宣言
//static let 定数名:型
//static var 変数名:型

class Car {
//  クラスプロパティ
    static var count = 0
   
//  インスタンスメンバーの定義
//  インスタンスプロパティ
    var moving = false
    
//  インスタンスメソッド
    func start() {
//      スタートした車をカウントアップします
        Car.count += 1
        moving = true
    }
    
    func stop() {
        if Car.count > 0 {
//        止まったらカウントダウンします
            Car.count -= 1
            moving = false
        }
    }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //車を作る
        let car1 = Car()
        let car2 = Car()
        //クラスプロパティcountにアクセスする
        print("動いている車は \(Car.count)台")
        car1.start()
        car2.start()
        print("動いている車は \(Car.count)台")
        car2.stop()
        print("動いている車は \(Car.count)台")
    }


}

