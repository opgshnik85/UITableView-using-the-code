//
//  ViewController.swift
//  UITableView
//
//  Created by MacBook on 15.02.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var myTableView = UITableView()
    let identifire = "MyCell"
    var array = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTable()
    }
    
    func createTable() {
        self.myTableView = UITableView(frame: view.bounds, style: .plain)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifire)
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        //Автоматическое изменение размера комбинированной сцены
        myTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        view.addSubview(myTableView)
    }
    
    //MARK: - UITableViewDataSource
    
    //Количество ячеек будут равно количеству элементов в массиве
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return array.count
    }
    /*Возвращает многократно используемый объект ячейки табличного представления для указанного идентификатора повторного использования и добавляет его в таблицу.*/
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifire, for: indexPath)
        let number = array[indexPath.row]
        
        cell.textLabel?.text = number
        
        return cell
    }
    
    //MARK: - UITableViewDelegate
    //Задаем высоту ячейки
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    //Delegate передает номер ячейки, на которую мы нажали
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let number = array[indexPath.row]
        print(number)
    }
    
}
        
    
   



