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

### Kullanılan Mimari
Jokes App, MVVM (Model-View-ViewModel) mimari desenini kullanarak geliştirilmiştir. Bu mimari, iş mantığını ve veri yönetimini kullanıcı arayüzünden ayırarak uygulamanın daha modüler, test edilebilir ve sürdürülebilir olmasını sağlar.

- **Model**: Uygulamanın verilerini ve iş mantığını temsil eder. Verileri işler ve dış hizmetlerle iletişim kurar.
- **View**: Uygulamanın kullanıcı arayüzünü temsil eder, verileri gösterir ve kullanıcı etkileşimlerini yönetir.
- **ViewModel**: Model ile View arasında aracı rolü oynar. Model'den gelen verileri işler ve View'e gösterilmesi için hazırlar, ayrıca kullanıcı girdilerini işler ve Model'i günceller.

### API Kullanımı
Uygulama, aşağıdaki API uç noktalarını kullanır:
- Şaka kategorileri
- Şakaların detaylı bilgileri

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


##Ekran Görüntüsü
![Uploading Simulator Screen Recording - iPhone 15 Pro - 2024-10-11 at 00.06.36.gif…]()
---
