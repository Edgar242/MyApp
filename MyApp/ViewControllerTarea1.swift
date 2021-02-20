//
//  ViewControllerTarea1.swift
//  MyApp
//
//  Created by Edgar on 14/02/21.
//

import UIKit

class ViewControllerTarea1: UIViewController {
  @IBOutlet weak var switchDarkBackground: UISwitch!
  @IBOutlet weak var switchMute: UISwitch!
  @IBOutlet weak var imageViewSpeaker: UIImageView!
  @IBOutlet weak var sliderVolume: UISlider!
  @IBOutlet weak var segCtrlVideoPlayer: UISegmentedControl!
  @IBOutlet weak var buttonAdd: UIButton!
  @IBOutlet weak var textViewChatBox: UITextView!
  @IBOutlet weak var textFieldPhrase: UITextField!
  var soundLevel = "";
  
  @IBAction func switchOnChangeDarkBackground(_ sender: UISwitch) {
    if switchDarkBackground.isOn {
      textViewChatBox.backgroundColor = UIColor.black;
      textViewChatBox.textColor = UIColor.white;
      textFieldPhrase.backgroundColor = UIColor.black;
      textFieldPhrase.textColor = UIColor.white;
    } else {
      textViewChatBox.backgroundColor = UIColor.white;
      textViewChatBox.textColor = UIColor.black;
      textFieldPhrase.backgroundColor = UIColor.white;
      textFieldPhrase.textColor = UIColor.black;
    }
  }
  
  @IBAction func onChangeButtonAdd(_ sender: UIButton) {
    if textFieldPhrase.text!.isEmpty { return; }
    textViewChatBox.text += textFieldPhrase.text! + "\r\n";
    textFieldPhrase.text = "";
  }
  
  @IBAction func onChangeVideoPlayer(_ sender: UISegmentedControl) {
    switch segCtrlVideoPlayer.selectedSegmentIndex {
    case 0:
      textViewChatBox.text = "Rewind video";
    case 1:
      textViewChatBox.text = "Play video";
    case 2:
      textViewChatBox.text = "Pause video";
    case 3:
      textViewChatBox.text = "Next video";
    default:
      print("default");
    }
  }
  
  
  @IBAction func sliderVolumeOnChange(_ sender: UISlider) {
    switch sliderVolume.value {
    case 0..<1:
      soundLevel = "speaker";
    case 1..<2:
      soundLevel = "speaker.1";
    case 2..<3:
      soundLevel = "speaker.2";
    case 3...4:
      soundLevel = "speaker.3";
    default:
      print(sliderVolume.value)
    }
    
    imageViewSpeaker.image = UIImage(systemName: soundLevel);
  }
    
  
  @IBAction func onSwitchChangeMood(_ sender: UISwitch) {
    if switchMute.isOn {
      imageViewSpeaker.image = UIImage(systemName: "speaker.slash.fill");
    } else {
      imageViewSpeaker.image = UIImage(systemName: soundLevel);
    }
  }
  
  override func viewDidLoad() {
    print("la vista ya se cargó")
    super.viewDidLoad()
    
      

    // Do any additional setup after loading the view.
    
    }
  
  override func viewWillAppear(_ animated: Bool) {
    print("la vista va a aparecer")
    super.viewWillAppear(animated)
    
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
