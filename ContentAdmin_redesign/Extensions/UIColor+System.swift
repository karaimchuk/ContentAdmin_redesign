//
//  File.swift
//  ContentAdmin_redesign
//
//  Created by Dmitry on 10/10/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit.UIColor

extension UIColor {

  // MARK: - Nested

  enum App {
    static var dark: UIColor {
      return color(red: 34, green: 30, blue: 30)
    }
    static var greyishBrown: UIColor {
      return color(red: 74, green: 74, blue: 74)
    }
    static var greyish: UIColor {
      return color(red: 178, green: 178, blue: 178)
    }
    static var steel: UIColor {
      return color(red: 138, green: 138, blue: 143)
    }
    static var white: UIColor {
      return color(red: 246, green: 246, blue: 246)
    }
    static var whiteLight: UIColor {
      return color(red: 248, green: 248, blue: 248).withAlphaComponent(0.82)
    }
    static var whiteGrey: UIColor {
      return color(red: 237, green: 237, blue: 237)
    }
    static var greenishGrey: UIColor {
      return color(red: 162, green: 192, blue: 163)
    }
    static var lightBlue: UIColor {
      return color(red: 196, green: 214, blue: 228)
    }
    static var sand: UIColor {
      return color(red: 228, green: 214, blue: 136)
    }
    static var fadedPink: UIColor {
      return color(red: 231, green: 195, blue: 207)
    }
    static var lightMauve: UIColor {
      return color(red: 205, green: 188, blue: 200)
    }
    static var blueGreen: UIColor {
      return color(red: 132, green: 170, blue: 165)
    }
    static var separator: UIColor {
      return color(red: 206, green: 206, blue: 206)
    }
    static var uglyPink: UIColor {
      return color(red: 210, green: 126, blue: 135)
    }
  }

  @objc static private func color(red: Int, green: Int, blue: Int) -> UIColor {
    return color(redColor: red, greenColor: green, blueColor: blue, alpha: 1.0)
  }

  @objc static private func color(redColor: Int, greenColor: Int, blueColor: Int, alpha: CGFloat) -> UIColor {
    return UIColor(red: CGFloat(redColor) / 255.0,
                   green: CGFloat(greenColor) / 255.0,
                   blue: CGFloat(blueColor) / 255.0,
                   alpha: alpha)
  }
}


