//
//  ViewController.swift
//  MemoApp
//
//  Created by 福田辰紀 on 2022/06/15.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textView.delegate = self
        
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        textView.text = sceneDelegate.lastText
    }
    
    func textViewDidChange(_ textView: UITextView) {
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        sceneDelegate.lastText = textView.text
    }
    
    @IBAction func clearButton(_ sender: Any) {
        textView.text = ""
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
        sceneDelegate.lastText = textView.text
    }
    
}

