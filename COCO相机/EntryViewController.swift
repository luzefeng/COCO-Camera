//
//  EntryViewController.swift
//  COCO相机
//
//  Created by lu on 15/12/5.
//  Copyright © 2015年 lu. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, CLImageEditorDelegate, CLImageEditorTransitionDelegate, CLImageEditorThemeDelegate{

    @IBOutlet weak var EditButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func pressEditButton(sender: AnyObject) {
        let picker = UIImagePickerController()
        picker.delegate  = self
        picker.allowsEditing = false
        picker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
        self.presentViewController(picker, animated: true, completion: nil)
    }
    
    //pragma mark- ImagePicker delegate
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        let editor = CLImageEditor(image: image, delegate: self)
        picker.pushViewController(editor, animated: true)
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
