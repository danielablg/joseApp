//
//  ButtonsStackView.swift
//  JoseMusicPlayer
//
//  Created by Daniela Bulgaru on 19/09/2016.
//  Copyright © 2016 TheAppBusiness. All rights reserved.
//

import UIKit

final class ButtonsStackView: UIStackView {

  @IBOutlet private var leftRecording: UIButton!
  @IBOutlet private var rightRecording: UIButton!
  
  
  private func getRandomColor() -> UIColor {
    
    let randomRed:CGFloat = CGFloat(drand48())
    let randomGreen:CGFloat = CGFloat(drand48())
    let randomBlue:CGFloat = CGFloat(drand48())
    
    return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
  }
  
  func set(recordings recordings: [Recording]) {
    leftRecording.backgroundColor = getRandomColor()
    rightRecording.backgroundColor = getRandomColor()
  }
  
}
