//
//  CommunitiesViewController.swift
//  WhatsApp
//
//  Created by vamsi on 15/04/24.
//

import UIKit

class CommunitiesViewController: UIViewController {
    
    var annoucementProfileName = ["","IOSDeveloper", "JobUpdates 2024"]
    var communityImage = ["","IosDevelopment",""]
    //var data = [String]()
    @IBOutlet weak var communitiesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        communitiesTableView.dataSource = self
        communitiesTableView.delegate = self
        
      
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
extension CommunitiesViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let communityCell: Community1TableViewCell = communitiesTableView.dequeueReusableCell(withIdentifier:"communitycell",for: indexPath) as! Community1TableViewCell
            return communityCell
        }
        else{
            
            let communitySectionCell: Community2TableViewCell = communitiesTableView.dequeueReusableCell(withIdentifier: "communitysectioncell",for: indexPath)as! Community2TableViewCell
            communitySectionCell.AnnouncementLabel.text = "Announcements"
            communitySectionCell.communityProfileImage.image = UIImage(named: communityImage[indexPath.section])
            communitySectionCell.communityProfileName.text = annoucementProfileName[indexPath.section]
            print(indexPath.row)
            return communitySectionCell
        
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return  120.0
        }
        else{
            return 150.0
        }
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
      
        return 3
    }
    
}
