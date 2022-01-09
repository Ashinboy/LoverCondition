//
//  ViewController.swift
//  LoverCondition
//
//  Created by Ashin Wang on 2022/1/7.
//

import UIKit


class ViewController: UIViewController {
    //age
    @IBOutlet weak var ageSliderOutlet: UISlider!
    @IBOutlet weak var ageText: UILabel!
    var age: Int = 0
    //age and tall slider
    func sliderValue(){
        age = Int(ageSliderOutlet.value)
        ageText.text = "\(age)"
        
        tall = Int(tallSliderOutlet.value)
        tallText.text = "\(tall)"
    }
    
    // hair
    @IBOutlet weak var hairSegmentOutlet: UISegmentedControl!
    @IBOutlet weak var hairImage: UIImageView!
    let hairImages = ["01","02"]
    var hairIndex:Int = 0
    
    // starSign textField
    @IBOutlet weak var starSignTextField: UITextField!
    
    //tall
    @IBOutlet weak var tallSliderOutlet: UISlider!
    @IBOutlet weak var tallText: UILabel!
    var tall: Int = 0
    
    //sport
    @IBOutlet weak var sportOutlet: UISegmentedControl!
    @IBOutlet weak var sportImage: UIImageView!
    let sportImages = ["nice","hate"]
    var sportIndex:Int = 0
    
    //condition
    @IBOutlet weak var conditionSegment: UISegmentedControl!
    
    let conditionImage = ["boy","girl"]
    var index:Int = 0
    
    //eye
    
    @IBOutlet weak var eyeSegmentOutlet: UISegmentedControl!
    @IBOutlet weak var eyeImage: UIImageView!
    let eyeImages = ["beye","seye"]
    var eyeIndex:Int = 0
    
    
    
    
    // \(interestTextField.text)蠻有趣的，找一天來分享吧!
    @IBOutlet weak var interesstTextField: UITextField!
    // \(skillTextField.text)也太酷，我是專業打醬油，我們可以來交流交流~
    @IBOutlet weak var skillTextField: UITextField!
   
    @IBOutlet weak var resultText: UILabel!
    
    @IBOutlet weak var symbolImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //性別
    @IBAction func conditionSegmentAction(_ sender: UISegmentedControl) {
//        conditionSegment.tintColor = UIColor.darkGray
        index = sender.selectedSegmentIndex
        symbolImage.image = UIImage(named: conditionImage[index])
    }
    
    //年齡
    @IBAction func ageSlider(_ sender: UISlider) {
        sliderValue()
//        ageText.text = String(format: "%.0f", ageSliderOutlet.value)
    }
    @IBAction func hairSegment(_ sender: UISegmentedControl) {
        hairIndex = sender.selectedSegmentIndex
        hairImage.image = UIImage(named: hairImages[hairIndex])
    }
    @IBAction func tallSlider(_ sender: UISlider) {
        sliderValue()
//        tallText.text = String(format: "%.0f", tallSliderOutlet.value)
    }
    @IBAction func SportSegment(_ sender: UISegmentedControl) {
        sportIndex = sender.selectedSegmentIndex
        sportImage.image = UIImage(named: sportImages[sportIndex])
    }
    @IBAction func eyeSegment(_ sender: UISegmentedControl) {
        eyeIndex = sender.selectedSegmentIndex
        eyeImage.image = UIImage(named: eyeImages[eyeIndex])
    }
    
    @IBAction func actionBtn(_ sender: UIButton) {
        
        if starSignTextField != nil , interesstTextField != nil , skillTextField != nil {
            if starSignTextField.text! == "摩羯座"{
                resultText.text = "妳不是我的天使"
                print("妳不是我的天使")
                if starSignTextField.text! == "摩羯座",eyeIndex == 0, hairIndex == 0 {
                    resultText.text = "雖然我喜歡長頭髮大眼睛，但妳不是我的天使"
                }
                 if starSignTextField.text! == "摩羯座",eyeIndex == 0, hairIndex == 1 {
                     resultText.text = "我喜歡大眼睛但不太喜歡短頭髮，抱歉妳不是我的天使"
                    }
                if starSignTextField.text! == "摩羯座",eyeIndex == 1, hairIndex == 0 {
                    resultText.text = "我喜歡長頭髮但不太喜歡小眼睛，抱歉妳不是我的天使"
                   }
                if starSignTextField.text! == "摩羯座",eyeIndex == 1, hairIndex == 1 {
                    resultText.text = "抱歉妳不是我的天使"
                   }
                
            }else if starSignTextField.text! == "水瓶座"{
                resultText.text = "妳可能是我的天使"
                print("妳可能是我的天使")
            }else if starSignTextField.text! == "雙魚座"{
                resultText.text = "妳不是我的天使"
                print("妳不是我的天使")
            }else if starSignTextField.text! == "牡羊座"{
                resultText.text = "妳很有可能是我的天使，\(interesstTextField.text!)我還蠻有興趣的，\(skillTextField.text!)也太酷!"
                
                print("妳很有可能我的天使")
            }else if starSignTextField.text! == "金牛座"{
                resultText.text = "妳很有可能是我的天使，\(interesstTextField.text!)我還蠻有興趣的，\(skillTextField.text!)也太酷!"
                print("妳很有可能是我的天使")
            }else if starSignTextField.text! == "雙子座"{
                resultText.text = "妳不是我的天使"
                print("妳不是我的天使")
            }else if starSignTextField.text! == "巨蟹座"{
                resultText.text = "妳不是我的天使"
                print("妳不是我的天使")
            }else if starSignTextField.text! == "獅子座"{
                resultText.text = "妳不是我的天使"
                print("妳不是我的天使")
            }else if starSignTextField.text! == "處女座"{
                resultText.text = "妳不是我的天使"
                print("妳不是我的天使")
            }else if starSignTextField.text! == "天秤座"{
                resultText.text = "妳很有可能是我的天使，\(interesstTextField.text!)我還蠻有興趣的，\(skillTextField.text!)也太酷!"
                print("妳很有可能是我的天使")
                
                if starSignTextField.text! == "天秤座" , index == 1, age > 20, age < 30 , eyeIndex == 0, hairIndex == 0, tall > 160  , tall < 170 , sportIndex == 0{
                    resultText.text = "妳是我的真命天女，\(interesstTextField.text!)我也超有興趣，\(skillTextField.text!)也太酷!等不及聽妳分享了!"
                }else if age > 50 , tall < 150 {
                    resultText.text = "妳已超出我的守備範圍"
                }
            }else if starSignTextField.text! == "天蠍座"{
                resultText.text = "妳不是我的天使"
                print("妳不是我的天使")
            }else if starSignTextField.text! == "射手座"{
                resultText.text = "妳不是我的天使"
                print("妳不是我的天使")
            }else {
                resultText.text = "請務必填寫完整"
                print("請務必填寫完整")
            }
        
            
        }
        
        
        
        
        view.endEditing(true)
    }
   
    @IBAction func textFieldDismissKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func cleanBtn(_ sender: Any) {
        
        
        index = 0
        if index == 0 {
            conditionSegment.selectedSegmentIndex = 0
            symbolImage.image = UIImage(named: "boy")
        }
        eyeIndex = 0
        if eyeIndex == 0{
            eyeImage.image = UIImage(named: "beye")
            eyeSegmentOutlet.selectedSegmentIndex = 0
        }
        
        hairIndex = 0
        if hairIndex == 0{
            hairImage.image = UIImage(named: "01")
            hairSegmentOutlet.selectedSegmentIndex = 0
        }
        
        sportIndex = 0
        if sportIndex == 0{
            sportImage.image = UIImage(named: "nice")
            sportOutlet.selectedSegmentIndex = 0
        }
        
        ageText.text = "1"
        ageSliderOutlet.value = 1
        starSignTextField.text = ""
        tallSliderOutlet.value = 1
        tallText.text = "1"
        interesstTextField.text = ""
        skillTextField.text = ""
        
        resultText.text = ""
        
    }
    
//
//    func starSign(capricorn: String, aquarius: String, pisces: String, aries: String, taurus: String, Gemini: String, cancer: String, leo: String, virgo: String, libra: String, scorpio: String, sagittarius: String) {
//    }

}

