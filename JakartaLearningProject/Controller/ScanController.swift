//
//  ViewController.swift
//  JakartaLearningProject
//
//  Created by Andi Ikhsan Eldrian on 13/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit
import AVKit
import Vision
import Photos

class ViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {
    
//    let identifierLabel: UILabel = {
//        let label = UILabel()
//        label.backgroundColor = .white
//        label.textAlignment = .center
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    @IBOutlet weak var identifierLabel: UILabel!
    
    var scannedData = 0
    var captured = false
    var tempScan: String?
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setupIdentifierConfidenceLabel()
//        self.view.bringSubviewToFront(identifierLabel)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        identifierLabel.layer.zPosition = 1
        identifierLabel.isUserInteractionEnabled = true
        startCamera()
        self.captured = false
//        timer = Timer.init(timeInterval: 2, target: self, selector: #selector(detect(new:)), userInfo: nil, repeats: false)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @objc func detect(new: String) {
        if let _ = timer, let _ = tempScan {
            timer?.invalidate()
        }
        print("2 second passed")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        captured = false
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        timer = Timer.init(timeInterval: 2, target: self, selector: #selector(detect(new:)), userInfo: nil, repeats: false)
    }
    
//    fileprivate func setupIdentifierConfidenceLabel() {
//        view.addSubview(identifierLabel)
//        identifierLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -32).isActive = true
//        identifierLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        identifierLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        identifierLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
//    }
    
    func startCamera() {
        let captureSession = AVCaptureSession()
        captureSession.sessionPreset = .hd4K3840x2160
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        guard let input = try? AVCaptureDeviceInput(device: captureDevice) else { return }
        captureSession.addInput(input)
        
        captureSession.startRunning()
        
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        view.layer.addSublayer(previewLayer)
        previewLayer.frame = view.frame
        previewLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        previewLayer.connection?.videoOrientation = .portrait

        
        let dataOutput = AVCaptureVideoDataOutput()
        dataOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "videoQueue"))
        
        captureSession.addOutput(dataOutput)
    }
    
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        
        guard let pixelBuffer: CVPixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        
        guard let model = try? VNCoreMLModel(for: MLKotaTuaV5().model) else { return }
        
        let request = VNCoreMLRequest(model: model) { (finishedReq, err) in
            
            guard let results = finishedReq.results as? [VNClassificationObservation] else { return }
            guard let firstObservation = results.first else { return }
            
            if firstObservation.identifier == "Café Batavia" {
                self.scannedData = 5
                self.tempScan = firstObservation.identifier
            } else if firstObservation.identifier == "The Wayang Museum" {
                self.scannedData = 3
                self.tempScan = firstObservation.identifier
            } else if firstObservation.identifier == "The Bank Indonesia Museum" {
                self.scannedData = 1
                self.tempScan = firstObservation.identifier
            } else if firstObservation.identifier == "The Bank Mandiri Museum" {
                self.scannedData = 2
                self.tempScan = firstObservation.identifier
            } else if firstObservation.identifier == "Jakarta History Museum" {
                self.scannedData = 0
                self.tempScan = firstObservation.identifier
            } else if firstObservation.identifier == "The Fine Arts and Ceramic Museum" {
                self.scannedData = 4
                self.tempScan = firstObservation.identifier
            } else if firstObservation.identifier == "The Red Shop" {
                self.scannedData = 6
                self.tempScan = firstObservation.identifier
            } else if firstObservation.identifier == "Else" {
                self.tempScan = "Else"
            }
            
            
            DispatchQueue.main.async {
                if firstObservation.confidence >= 0.98{
                    self.timer = Timer.init(timeInterval: 2, target: self, selector: #selector(self.detect(new:)), userInfo: nil, repeats: false)
                    self.detect(new: firstObservation.identifier)
                    switch firstObservation.identifier {
                    case "Café Batavia":
                        if !self.captured {
                            self.detect(new: firstObservation.identifier) //timer
//                            self.performSegue(withIdentifier:"informationSegue", sender: self)
                            print("Scanned Success \(firstObservation.identifier) , \(firstObservation.confidence)")
                            self.identifierLabel.text = firstObservation.identifier
                            self.captured = true
                        }
                        print(self.captured)
                        self.identifierLabel.text = firstObservation.identifier
                    case "The Wayang Museum":
                        if !self.captured {
                            self.detect(new: firstObservation.identifier)
//                            self.performSegue(withIdentifier:"informationSegue", sender: self)
                            print("Scanned Success \(firstObservation.identifier) , \(firstObservation.confidence)")
                            self.identifierLabel.text = firstObservation.identifier
                            self.captured = true
                        }
                        print(self.captured)
                        self.identifierLabel.text = firstObservation.identifier
                    case "The Bank Indonesia Museum":
                        if !self.captured {
                            self.detect(new: firstObservation.identifier)
//                            self.performSegue(withIdentifier:"informationSegue", sender: self)
                            print("Scanned Success \(firstObservation.identifier) , \(firstObservation.confidence)")
                            self.identifierLabel.text = firstObservation.identifier
                            self.captured = true
                        }
                        print(self.captured)
                        self.identifierLabel.text = firstObservation.identifier
                    case "The Bank Mandiri Museum":
                        if !self.captured {
                            self.detect(new: firstObservation.identifier)
//                            self.performSegue(withIdentifier:"informationSegue", sender: self)
                            print("Scanned Success \(firstObservation.identifier) , \(firstObservation.confidence)")
                            self.identifierLabel.text = firstObservation.identifier
                            self.captured = true
                        }
                        print(self.captured)
                        self.identifierLabel.text = firstObservation.identifier
                    case "Jakarta History Museum":
                        if !self.captured {
                            self.detect(new: firstObservation.identifier)
//                            self.performSegue(withIdentifier:"informationSegue", sender: self)
                            print("Scanned Success \(firstObservation.identifier) , \(firstObservation.confidence)")
                            self.identifierLabel.text = firstObservation.identifier
                            self.captured = true
                        }
                        print(self.captured)
                        self.identifierLabel.text = firstObservation.identifier
                    case "The Fine Arts and Ceramic Museum":
                        if !self.captured {
                            self.detect(new: firstObservation.identifier)
//                            self.performSegue(withIdentifier:"informationSegue", sender: self)
                            print("Scanned Success \(firstObservation.identifier) , \(firstObservation.confidence)")
                            self.identifierLabel.text = firstObservation.identifier
                            self.captured = true
                        }
                        print(self.captured)
                        self.identifierLabel.text = firstObservation.identifier
                    case "The Red Shop":
                        if !self.captured {
                            self.detect(new: firstObservation.identifier)
//                            self.performSegue(withIdentifier:"informationSegue", sender: self)
                            print("Scanned Success \(firstObservation.identifier) , \(firstObservation.confidence)")
                            self.identifierLabel.text = firstObservation.identifier
                            self.captured = true
                        }
                        print(self.captured)
                        self.identifierLabel.text = firstObservation.identifier
                    default:
                        return
                    }
                } else {
//                    self.detect(new: firstObservation.identifier)
                    self.identifierLabel.text = "Point to an object and tap"
                }
                
                
            }
            
        }
        
        try? VNImageRequestHandler(cvPixelBuffer: pixelBuffer, options: [:]).perform([request])
    }
    
    //Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "informationSegue" {
//            let seguedData = data[scannedData]
            let destination = segue.destination as! InformationController
//            destination.selectedData = seguedData
            destination.selectedIndex = scannedData
//            print(scannedData)
        }
    }
    
    @IBAction func testButton(_ sender: Any) {
        if tempScan != "Else" {
            
            self.performSegue(withIdentifier:"informationSegue", sender: self)
            data[scannedData].isUnlocked = false
            print(data[scannedData].title, data[scannedData].isUnlocked)
        }
    }
    
    
}

