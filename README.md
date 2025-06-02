<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# styles_dap_sarj

DAP Şarj projesi için ortak stil tanımlamalarını içeren Flutter paketi.

Bu paket, DAP Şarj mobil uygulamasında kullanılan renkler, metin stilleri, boyutlandırmalar, buton stilleri ve diğer arayüz bileşenleri için merkezi bir stil yönetimi sağlar.

## Özellikler

- Önceden tanımlanmış renk paletleri
- Çeşitli metin stilleri (başlık, alt başlık, gövde metni vb.)
- Standartlaştırılmış boyutlandırma ve boşluk değerleri
- Özel buton temaları ve stilleri
- Ayırıcılar ve diğer yardımcı widget'lar

## Kurulum

Bu paketi projenize eklemek için `pubspec.yaml` dosyanıza aşağıdaki satırı ekleyin:

```yaml
dependencies:
  styles_dap_sarj: ^0.0.1 # En son sürümü pub.dev üzerinden kontrol edin
```

Ardından terminalde `flutter pub get` komutunu çalıştırın.

## Kullanım

Paketi Dart dosyalarınızda içe aktarın:

```dart
import 'package:styles_dap_sarj/styles_dap_sarj.dart';
```

Artık pakette tanımlı stilleri kullanabilirsiniz. Örneğin:

```dart
// Renk kullanımı
Container(
  color: MainColors.primaryColor,
)

// Metin stili kullanımı
Text(
  'Merhaba Dünya!',
  style: TextStyles.headline1,
)

// Boyutlandırma kullanımı
SizedBox(
  height: Scales.paddingMedium,
)

// Buton kullanımı
ElevatedButton(
  style: ButtonStyles.primaryButtonStyle,
  onPressed: () {},
  child: Text('Tıkla'),
)
```


