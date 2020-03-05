//
//  Task2ViewController.swift
//  homework_15
//
//  Created by Александра Лесничая on 3/5/20.
//  Copyright © 2020 Alexandra Lesnichaya. All rights reserved.
//

import UIKit

class Task2ViewController: UIViewController {
    
    var fibonacciArray: [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        calculateFibonacci()
    }

    func calculateFibonacci() {
        fibonacciArray.append(1)
        fibonacciArray.append(1)
        var i = 2
        while fibonacciArray.last! < 1000000 {
            let nextNumber = fibonacciArray[i-2] + fibonacciArray[i-1]
            fibonacciArray.append(nextNumber)
            i += 1
        }
        fibonacciArray = fibonacciArray.dropLast()
    }



}


extension Task2ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fibonacciArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = String(fibonacciArray[indexPath.row])
        return cell!
    }
}
