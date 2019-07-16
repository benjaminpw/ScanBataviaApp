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

    let identifierLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupIdentifierConfidenceLabel()
        startCamera()
    }
    
    fileprivate func setupIdentifierConfidenceLabel() {
        view.addSubview(identifierLabel)
        identifierLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -32).isActive = true
        identifierLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        identifierLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        identifierLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func startCamera() {
        let captureSession = AVCaptureSession()
//        captureSession.sessionPreset = .photo
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        guard let input = try? AVCaptureDeviceInput(device: captureDevice) else { return }
        captureSession.addInput(input)
        
        captureSession.startRunning()
        
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        view.layer.addSublayer(previewLayer)
        previewLayer.frame = view.frame
        
        let dataOutput = AVCaptureVideoDataOutput()
        dataOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "videoQueue"))
        captureSession.addOutput(dataOutput)
    }
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        //        print("Camera was able to capture a frame:", Date())
        
        guard let pixelBuffer: CVPixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        
        guard let model = try? VNCoreMLModel(for: MLKotaTuaV3().model) else { return }
        
        let request = VNCoreMLRequest(model: model) { (finishedReq, err) in
   
            guard let results = finishedReq.results as? [VNClassificationObservation] else { return }
            guard let firstObservation = results.first else { return }
            
//            print(firstObservation.identifier, firstObservation.confidence)
            
            DispatchQueue.main.async {
                if firstObservation.confidence >= 0.99 {
                    let confidenceText = "\n \(Int(firstObservation.confidence * 100))% confidence"
                    switch firstObservation.identifier {
                    case "Café Batavia":
                        self.identifierLabel.text = "It's Cafe Batavia! \(confidenceText)"
                    case "The Wayang Museum":
                        self.identifierLabel.text = "It's The Wayang Museum, for wayang show! \(confidenceText)"
                    case "The Bank Indonesia Museum":
                        self.identifierLabel.text = "It's The Bank Indonesia Museum, You Can See  Money There! \(confidenceText)"
                    case "The Bank Mandiri Museum":
                        self.identifierLabel.text = "It's The Bank Mandiri Museum, You Can See  Money There! \(confidenceText)"
                    case "Jakarta History Museum":
                        self.identifierLabel.text = "It's Jakarta History Museum, You Can See War Tools There! \(confidenceText)"
                    case "The Fine Arts and Ceramic Museum":
                        self.identifierLabel.text = "It's The Fine Arts and Ceramic Museum! \(confidenceText)"
                    case "The Red Shop":
                        self.identifierLabel.text = "It's The Red Shop! \(confidenceText)"
                    default:
                        return
                    }
                } else {
                    self.identifierLabel.text = "Please point to an object!"
                }
//                self.identifierLabel.text = "\(firstObservation.identifier) \(firstObservation.confidence * 100)"
            }
            
        }
        
        try? VNImageRequestHandler(cvPixelBuffer: pixelBuffer, options: [:]).perform([request])
    }


}

