//
//  AddContactViewController.swift
//  Project 15, 16, 17 & 18
//
//  Created by Ryan Beckett on 22/05/2016.
//  Copyright © 2016 Ryan Beckett. All rights reserved.
//

import UIKit

class AddContactViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var contactName: UITextField!
    @IBOutlet weak var contactMobile: UITextField!
    @IBOutlet weak var contactEmail: UITextField!
    @IBOutlet weak var contactImage: UIImageView!
    
    let imagePicker = UIImagePickerController()
    var addedKeyboardHeight = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(AddContactViewController.keyboardWillShow(_:)), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(AddContactViewController.keyboardWillHide(_:)), name: UIKeyboardWillHideNotification, object: nil)
        imagePicker.delegate = self
        
        let theTap = UITapGestureRecognizer(target: self, action: #selector(AddContactViewController.dismissKeyboard))
        view.addGestureRecognizer(theTap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func keyboardWillShow(notification: NSNotification) {
        
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
            if !addedKeyboardHeight {
                self.view.frame.origin.y -= keyboardSize.height
                addedKeyboardHeight = true
            }
            
        }
        
    }
    
    func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
            if addedKeyboardHeight {
                self.view.frame.origin.y += keyboardSize.height
                addedKeyboardHeight = false
            }
        }
    }
    
    @IBAction func addContactImage(sender: AnyObject) {
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .SavedPhotosAlbum
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        if let selectImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            contactImage.contentMode = .ScaleAspectFill
            contactImage.image = selectImage
            contactImage.layer.cornerRadius = contactImage.frame.height / 2
            contactImage.layer.masksToBounds = false
            contactImage.clipsToBounds = true
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
