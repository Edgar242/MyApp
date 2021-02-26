//
//  PageViewControllerGallery.swift
//  MyApp
//
//  Created by Edgar on 20/02/21.
//

import UIKit

class PageViewControllerGallery: UIPageViewController, UIPageViewControllerDataSource {
  
  var pageControllers: [UIViewController] = []
  
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    guard let viewControllerIndex = pageControllers.firstIndex(of: viewController) else {
      return nil
    }
    let previo = viewControllerIndex - 1
    
    guard previo >= 0 else {
      return nil
    }
    return pageControllers[previo]
  }
  
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    guard let indexVC = pageControllers.firstIndex(of: viewController) else {
      return nil
    }
    let siguiente = indexVC + 1
    
    guard siguiente < pageControllers.count else {
      return nil
    }
    
    return pageControllers[siguiente]
    
  }
  

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      dataSource = self
      let storyBoard2 = UIStoryboard(name: "Main", bundle: nil)
      pageControllers.append(storyBoard2.instantiateViewController(withIdentifier: "viewControllerPurple"))
      pageControllers.append(storyBoard2.instantiateViewController(withIdentifier: "viewControllerBlue"))
      if let primeraPagina = pageControllers.first {
        setViewControllers([primeraPagina], direction: .forward, animated: true, completion: nil)
      }
      
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
