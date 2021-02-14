//
//  ViewControllerTarea1.swift
//  MyApp
//
//  Created by Edgar on 14/02/21.
//

import UIKit

class ViewControllerTarea1: UIViewController {
  @IBAction func onSwitchChangeMood(_ sender: UISwitch) {
    if switchMood.isOn {
      imageViewMood.image = UIImage(systemName: "play");
    } else {
      imageViewMood.image = UIImage(systemName: "stop");
    }
  }
  
  @IBOutlet weak var switchMood: UISwitch!
  @IBOutlet weak var imageViewMood: UIImageView!
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
