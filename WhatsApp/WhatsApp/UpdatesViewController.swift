//
//  UpdatesViewController.swift
//  WhatsApp
//
//  Created by vamsi on 15/04/24.
//

import UIKit

class UpdatesViewController: UIViewController {

    @IBOutlet weak var updatesTableView: UITableView!
    
    var statusName = ["Prudhvi","Gopi","Naveen"]
    var timeStatusUpdate = ["58 mintues ago","2:11 PM","11:59 AM"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updatesTableView.dataSource = self
        updatesTableView.delegate = self

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
extension UpdatesViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        else
        {
            return statusName.count
        }
         
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = updatesTableView.dequeueReusableCell(withIdentifier: "updateCell", for: indexPath) as! StatusTableViewCell
            return cell
        }
        else {
            let cell = updatesTableView.dequeueReusableCell(withIdentifier: "updateCell", for: indexPath) as! StatusTableViewCell
            cell.statusTitle.isHidden = true
            cell.mystatusTitle.text = statusName[indexPath.row]
            cell.subHeading.text = timeStatusUpdate[indexPath.row]
            
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 143.0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1{
            return "Recent Updates"
        }
        else{
            return ""
        }
        
    }
    
}
