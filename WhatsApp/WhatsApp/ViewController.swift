//
//  ViewController.swift
//  WhatsApp
//
//  Created by vamsi on 15/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var WhatsAppTableView: UITableView!
    
    @IBOutlet weak var searchForName: UISearchBar!
    
    
    var contactNames = ["C.Vamsi","Venkat Anna ios Trainner","Venkat Bro","Mani Prasanth","Sabeer Bro","Mohan","Muni","Ravi","Lakshman","Prakash"]
    var subMessages = ["DemoProject.zip","Ha Okay Anna","MapsforGoogle.zip","Connect with Goggle meet","UpdatePhone.zip","Hi Bava","Muni document chudu","Anna EMI","Lakshman be careful","Come ra let's die"]
    var whatsAppProfile = ["Saaho","venkatAnnaios","VenkatBro","PrasanthBro","Sabeer","Mohan","Muni","Ravi","Lakshman","Prakash"]

    var searchName = [String]()
    var searching = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WhatsAppTableView.dataSource = self
        WhatsAppTableView.delegate = self
        searchForName.delegate = self
        searchName = contactNames
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let messageVC = storyboard?.instantiateViewController(withIdentifier: "MessageViewController") as! MessageViewController
        let name = contactNames[indexPath.row]
        messageVC.storeName = name
        let image = UIImage(named: whatsAppProfile[indexPath.row])
        messageVC.storeImage = image
        //messageVC.imageforprofile.image = UIImage(named: whatsAppProfile[indexPath.row])
        self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.pushViewController(messageVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
            return searchName.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = WhatsAppTableView.dequeueReusableCell(withIdentifier: "WhatsCell", for: indexPath) as! TableViewCell
       
            cell.NameLabel.text = searchName[indexPath.row]
            cell.messageLabel.text = subMessages[indexPath.row]
            cell.personImage.image = UIImage(named: whatsAppProfile[indexPath.row])
        
        return cell
    }
    
   
}
extension ViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
       /* if searchText != ""{
            searchName = contactNames.filter{ $0.contains(searchText)}
            WhatsAppTableView.reloadData()
        }
        else{
            print("kindly enter data")
            searchName = contactNames
            WhatsAppTableView.reloadData()
        }*/
       searchName = contactNames.filter{$0.localizedStandardContains(searchText)}
        searching = true
        DispatchQueue.main.async {
            self.WhatsAppTableView.reloadData()
        }
        
        
    }
    
}

