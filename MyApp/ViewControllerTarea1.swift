//
//  ViewControllerTarea1.swift
//  MyApp
//
//  Created by Edgar on 14/02/21.
//

import UIKit

class ViewControllerTarea1: UIViewController {
  @IBOutlet weak var switchDarkBackground: UISwitch!
  @IBOutlet weak var switchMood: UISwitch!
  @IBOutlet weak var imageViewMood: UIImageView!
  @IBOutlet weak var sliderVolume: UISlider!
  @IBOutlet weak var segCtrlVideoPlayer: UISegmentedControl!
  @IBOutlet weak var buttonAdd: UIButton!
  @IBOutlet weak var textViewInfo: UITextView!
  @IBOutlet weak var textFieldPhrase: UITextField!
  var soundLevel = "";
  
  @IBAction func switchOnChangeDarkBackground(_ sender: UISwitch) {
    if switchDarkBackground.isOn {
      textViewInfo.backgroundColor = UIColor.black;
      textViewInfo.textColor = UIColor.white;
      textFieldPhrase.backgroundColor = UIColor.black;
      textFieldPhrase.textColor = UIColor.white;
    } else {
      textViewInfo.backgroundColor = UIColor.white;
      textViewInfo.textColor = UIColor.black;
      textFieldPhrase.backgroundColor = UIColor.white;
      textFieldPhrase.textColor = UIColor.black;
    }
  }
  
  @IBAction func onChangeButtonAdd(_ sender: UIButton) {
    textViewInfo.text += textFieldPhrase.text! + "\r\n";
    textFieldPhrase.text = "";
  }
  
  @IBAction func onChangeVideoPlayer(_ sender: UISegmentedControl) {
    switch segCtrlVideoPlayer.selectedSegmentIndex {
    case 0:
      textViewInfo.text = "Rewind video";
    case 1:
      textViewInfo.text = "Play video";
    case 2:
      textViewInfo.text = "Pause video";
    case 3:
      textViewInfo.text = "Next video";
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
    
    imageViewMood.image = UIImage(systemName: soundLevel);
  }
    
  
  @IBAction func onSwitchChangeMood(_ sender: UISwitch) {
    if switchMood.isOn {
      imageViewMood.image = UIImage(systemName: "speaker.slash.fill");
    } else {
      imageViewMood.image = UIImage(systemName: soundLevel);
    }
  }
  
  override func viewDidLoad() {
        super.viewDidLoad()

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
