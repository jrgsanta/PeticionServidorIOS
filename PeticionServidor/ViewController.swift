//
//  ViewController.swift
//  PeticionServidor
//
//  Created by Jrgsanta on 21/11/15.
//  Copyright © 2015 Jrgsanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ISBN: UITextField!
    
    @IBOutlet weak var resultado: UITextView!
    
    func sincrono(isbn: String) -> NSString{
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:" + isbn
        let url = NSURL(string: urls)
        let datos:NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data:datos!, encoding:NSUTF8StringEncoding)
        return texto!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buscarISBN(sender: AnyObject) {
       resultado.text = sincrono(ISBN.text!) as String
    }
    
}

