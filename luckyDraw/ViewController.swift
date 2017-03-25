//
//  ViewController.swift
//  luckyDraw
//
//  Created by 林淑微 on 2017/3/25.
//  Copyright © 2017年 Monicalin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var list=["關西","九州","東京","北海道","沖繩"]

    @IBOutlet weak var ticketPickerView: UIPickerView!
    @IBOutlet weak var awardLabel: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if(component==0){
            return list.count
        }
        return 0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (component==0){
            return list[row]
        }
        return nil;
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (component==0){
            switch(list[row])
            {
                case "關西":
                    awardLabel.text="京都大阪任你行"
            
                case "九州":
                    awardLabel.text="九州吃拉麵"
            
                case "東京":
                    awardLabel.text="東京築地吃壽司"
            
                case "北海道":
                    awardLabel.text="北海道滑雪去"
            
            
                case "沖繩":
                    awardLabel.text="沖繩就是要衝海邊"
            
                default:
            
                    awardLabel.text="安慰獎"
            
            
            }
        }

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ticketPickerView.dataSource = self;
        ticketPickerView.delegate = self;
        //var list=["京都","九州","東京","北海道","沖繩"];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

