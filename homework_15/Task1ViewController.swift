//
//  ViewController.swift
//  homework_15
//
//  Created by Александра Лесничая on 3/3/20.
//  Copyright © 2020 Alexandra Lesnichaya. All rights reserved.
//

import UIKit

class Task1ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let namesOfColoursArray: [String] = ["Красный", "Зелёный", "Оранжевый", "Синий", "Чёрный", "Жёлтый"]
    let coloursArray: [UIColor] = [.red, .green, .orange, .blue, .black, .yellow]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
    }



}


extension Task1ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesOfColoursArray.count
    }
              
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        let index = indexPath.row
        let title = namesOfColoursArray[index]
        let colour = coloursArray[index]
        cell!.textLabel?.text = title
        cell!.textLabel?.textColor = colour
//        cell!.contentView.backgroundColor = coloursArray[index]    // <- changing row background colour
        return cell!
    }
}

