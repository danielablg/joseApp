//
//  ViewController.swift
//  JoseMusicPlayer
//
//  Created by Daniela Bulgaru on 19/09/2016.
//  Copyright © 2016 TheAppBusiness. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

  @IBOutlet private var verticalStackView: UIStackView!
  @IBOutlet private var firstHorizontalStackView: UIStackView!

  @IBOutlet private var firstButton: UIButton!
  @IBOutlet private var secondButton: UIButton!
  
  private var recordings: [Recording] = [Recording(name: "", recordingSoundFileName: "", isLooping: false),
                                         Recording(name: "", recordingSoundFileName: "", isLooping: false),
                                         Recording(name: "", recordingSoundFileName: "", isLooping: false),
                                         Recording(name: "", recordingSoundFileName: "", isLooping: false),
                                         Recording(name: "", recordingSoundFileName: "", isLooping: false),]
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    recordings.forEach { recording in
      let horizontalStack = ButtonsStackView.loadFromNib()
      horizontalStack.set(recordings: [recording, recording])
      self.verticalStackView.addArrangedSubview(horizontalStack)
    }
    
    self.view.setNeedsLayout()
  }

  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func prefersStatusBarHidden() -> Bool {
    return true
  }
  
}
