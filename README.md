**Jokes App**

Jokes App, kullanıcılara eğlenceli şakalar sunan bir iOS uygulamasıdır. Uygulama, çeşitli kategorilerdeki şakaları görüntülemenize ve detaylarını incelemenize olanak tanır.

### Özellikler
- Günlük şakalar ve farklı kategorilerde şaka arama
- Şakaların detaylı bilgilerini görme
- Kullanıcı dostu arayüz
- Swift ve SwiftUI ile modern tasarım

### Kullanılan Teknolojiler
- Swift
- SwiftUI
- API ile veri çekme
- Alamofire ile ağ işlemleri

### Kullanılan Mimari
Jokes App, MVVM (Model-View-ViewModel) mimari desenini kullanarak geliştirilmiştir. Bu mimari, iş mantığını ve veri yönetimini kullanıcı arayüzünden ayırarak uygulamanın daha modüler, test edilebilir ve sürdürülebilir olmasını sağlar.

- **Model**: Uygulamanın verilerini ve iş mantığını temsil eder. Verileri işler ve dış hizmetlerle iletişim kurar.
- **View**: Uygulamanın kullanıcı arayüzünü temsil eder, verileri gösterir ve kullanıcı etkileşimlerini yönetir.
- **ViewModel**: Model ile View arasında aracı rolü oynar. Model'den gelen verileri işler ve View'e gösterilmesi için hazırlar, ayrıca kullanıcı girdilerini işler ve Model'i günceller.

### API Kullanımı
Uygulama, aşağıdaki API uç noktalarını kullanır:
- Şaka kategorileri
- Şakaların detaylı bilgileri

 ### Hata Yönetimi

Uygulama, veri çekme sırasında oluşabilecek hatalar için aşağıdaki fonksiyonu kullanır:

```swift
case .failure(let error):
    DispatchQueue.main.async {
        self.errorMessage = "Veri alınamadı: \(error.localizedDescription)"
    }
```

Bu fonksiyon, ağ isteği başarısız olduğunda çalışır ve hatayı `error.localizedDescription` ile alıp, kullanıcıya anlamlı bir hata mesajı olarak gösterir. Böylece, kullanıcıya ağ hatası yaşandığı net bir şekilde bildirilir.

### Kurulum
Bu projeyi kurmak için aşağıdaki adımları izleyin:

1. Bu deposunu klonlayın:
   ```bash
   git clone https://github.com/yourusername/JokesApp.git
   ```
2. Proje dizinine gidin:
   ```bash
   cd JokesApp
   ```
3. Projeyi Xcode ile açın:
   ```bash
   open JokesApp.xcodeproj
   ```
4. API anahtarınızı `APIService.swift` dosyasına ekleyin:
   ```swift
   let apiKey = "YOUR_API_KEY"
   ```
5. Projeyi çalıştırın.


## Ekran Görüntüsü

![Simulator Screen Recording - iPhone 15 Pro - 2024-10-11 at 00 06 36](https://github.com/user-attachments/assets/3b8809e2-ad97-4043-8237-a22824364d11)

---
