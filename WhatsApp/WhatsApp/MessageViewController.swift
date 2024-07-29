//
//  MessageViewController.swift
//  WhatsApp
//
//  Created by vamsi on 30/04/24.
//

import UIKit
//import AVFoundation

class MessageViewController: UIViewController{

    var storeName: String?
    var storeImage: UIImage?
    
    var text: String?
    var label: String?
    var numberCount = 1
    
    var dataStore: [String] = []
    var anotherstore = [String]()
    @IBOutlet weak var messageTextLabel: UITextField!
    
    
    @IBOutlet weak var messageTableView: UITableView!
    @IBOutlet weak var nameLabelMain: UILabel!
    @IBOutlet weak var imageforprofile: UIImageView!
    //@IBOutlet weak var micButton: UIButton!
    //@IBOutlet weak var messageText: UITextField!
    
   // @IBOutlet weak var displayLabel: UILabel!
    
    //@IBOutlet weak var sendButton: UIButton!
    
    var storedelegate: MessageInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageTableView.dataSource = self
        messageTableView.delegate = self
        nameLabelMain.text = storeName
        imageforprofile.image = storeImage
       // self.tabBarController?.tabBar.isHidden = false

        // Do any additional setup after loading the view.
    }
    
   /* @IBAction func AudioButton(_ sender: UIButton) {
        var audioRecorder: AVAudioRecorder
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let currentDateTime = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "ddMMYYY-HHmmss"
        let recordingName = formatter.string(from: currentDateTime as Date) + ".wav"
        let pathArray = [dirPath, recordingName]
        let filePath = NSURL.fileURL(withPathComponents: pathArray)
        print(filePath)
        var error: NSError?
        
        var session = AVAudioSession.sharedInstance()
        session.setCategory(AVAudioSession.Category.playAndRecord, error: nil)
        
        audioRecorder = AVAudioRecorder(url: filePath, settings: nil, error: nil)
        audioRecorder.isMeteringEnabled = true
        audioRecorder.record()
    }*/
    
    
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Disapper")
    }
    override func viewWillDisappear(_ animated: Bool) {
       print("will disapper")
        self.tabBarController?.tabBar.isHidden = false
    }

    @IBAction func MessageSendButton(_ sender: UIButton) {
        guard let messagetext = messageTextLabel.text, !messagetext.isEmpty else{
            return
        }
        let newmessage = [messagetext]
        storedelegate?.sendingMsg(with: newmessage)
        messageTextLabel.text = " "
    }
}

extension MessageViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell: MessageTableViewCell = messageTableView.dequeueReusableCell(withIdentifier: "MessageCell",for: indexPath)as! MessageTableViewCell
            storedelegate = self
            if dataStore.isEmpty{
                cell.MessageLabel.text = ""
            }
            else{
                print(indexPath.row)
                anotherstore = dataStore
                cell.MessageLabel.text = anotherstore[indexPath.row]
            }
            return cell
        
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
}
extension MessageViewController: MessageInfo{
    func sendingMsg(with send: [String]) {
        dataStore.append(contentsOf: send)
        DispatchQueue.main.async {
            
            self.messageTableView.reloadData()
            self.numberCount = self.numberCount + 1
        }
    }
    
}

