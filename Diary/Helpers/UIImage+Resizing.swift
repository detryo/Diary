//
//  UIImage+Resizing.swift
//  Diary
//
//  Created by Cristian Sedano Arenas on 30/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import UIKit


// Resizing an image at a smaller size, since only "vignettes" are used.
extension UIImage {
    func resized(to size: CGSize) -> UIImage? {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContext(rect.size)
        self.draw(in: rect)
        guard let scaledImage = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        return scaledImage
    }
}
