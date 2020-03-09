//
//  StoreMainViewController.swift
//  QokkyAppProject
//
//  Created by Phongsakorn Srikate on 2/3/2563 BE.
//  Copyright © 2563 Phongsakorn Srikate. All rights reserved.
//

import UIKit

class StoreMainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {
    @IBOutlet weak var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                  return 1
              }
              
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                  let cell = tableView.dequeueReusableCell(withIdentifier: "StoreMainTableViewCell", for: indexPath) as! StoreMainTableViewCell
                  return cell
              }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
              return 2500
          }

       /////// Hidden statusbar/////////////////////
       override var prefersStatusBarHidden: Bool{
                  return false
              }

}
