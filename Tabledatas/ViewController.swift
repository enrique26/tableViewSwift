//
//  ViewController.swift
//  Tabledatas
//
//  Created by enrique on 7/31/19.
//  Copyright © 2019 enrique. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var datal : [String] = ["uno","dos","cuatro"];
    let defaultSession = URLSession(configuration: .default)
    var dataTask: URLSessionDataTask?
    
    @IBOutlet weak var Tablelist: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Tablelist.dataSource=self; /* fuente de lpos datos del a tabla en self ya que hace referencia a este viewcontroller */
        Tablelist.delegate=self; /* delega la interaccion con la lista */
        
        Tablelist.reloadData();
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datal.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        
        let fila = datal[indexPath.row];
        
        cell.textLabel?.text = fila;
        
        return cell;
    }
    


}

