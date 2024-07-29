//
//  WhatscallViewController.swift
//  WhatsApp
//
//  Created by vamsi on 01/05/24.
//

import UIKit

class WhatscallViewController: UIViewController {

    @IBOutlet weak var whatsAppcallTable: UITableView!
    
    var callerNames = ["Venkat Anna","Muni","Gopi"]
    var timingCaller = ["Today 9:16 AM","Yesterday, 8:50 PM","April 30, 11:10 AM"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        whatsAppcallTable.dataSource = self
        whatsAppcallTable.delegate = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension WhatscallViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        else{
            return callerNames.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let whatsAppCallCell = whatsAppcallTable.dequeueReusableCell(withIdentifier: "callcell",for: indexPath) as! callTableViewCell
            return whatsAppCallCell
        }
        else{
            let whatsAppCallCell = whatsAppcallTable.dequeueReusableCell(withIdentifier: "callcell",for: indexPath) as! callTableViewCell
            whatsAppCallCell.callLinkHeaderLabel.text = callerNames[indexPath.row]
            whatsAppCallCell.subHeadingLabel.text = timingCaller[indexPath.row]
            return whatsAppCallCell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
      return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1{
            return "Recent"
        }
        return ""
    }
    
    
}
