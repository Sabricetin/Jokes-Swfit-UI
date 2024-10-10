//
//  Translete-Api.swift
//  JokesAppSwfitUI
//
//  Created by Sabri Çetin on 10.10.2024.
//
import Foundation

class TranslationService {
    
    let apiKey = "2b377c5311msh5167a0b402e0210p127dabjsn69aae958db97"
    let apiHost = "deep-translate1.p.rapidapi.com"
    
    func translate(text: String, sourceLang: String = "en", targetLang: String = "tr", completion: @escaping (String?) -> Void) {
        let headers = [
            "x-rapidapi-key": apiKey,
            "x-rapidapi-host": apiHost,
            "Content-Type": "application/json"
        ]
        
        let parameters = [
            "q": text,
            "source": sourceLang,
            "target": targetLang
        ] as [String: Any]
        
        guard let postData = try? JSONSerialization.data(withJSONObject: parameters, options: []) else {
            completion(nil)
            return
        }
        
        guard let url = URL(string: "https://deep-translate1.p.rapidapi.com/language/translate/v2") else {
            completion(nil)
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = headers
        request.httpBody = postData
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error:", error)
                completion(nil)
                return
            }
            
            guard let data = data else {
                completion(nil)
                return
            }
            
            do {
                let translationResponse = try JSONDecoder().decode(TranslationResponse.self, from: data)
                let translatedText = translationResponse.data.translations.translatedText
                completion(translatedText)
            } catch {
                print("JSON Decoding Error:", error)
                completion(nil)
            }
        }
        
        dataTask.resume()
    }
}

struct TranslationResponse: Codable {
    let data: TranslationData
}

struct TranslationData: Codable {
    let translations: Translations
}

struct Translations: Codable {
    let translatedText: String
}
