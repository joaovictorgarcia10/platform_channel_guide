# Platform Channel Guide

Platform Channel é o mecanismo com o qual o Flutter consegue se comunicar com as plataformas nativas (Android e IOS).

- No Android: Kotlin ou Java
- IOS: Objective C ou Swift

Usamos esse mecanismo quando temos a necessidade de implementar alguma funcionalidade que seja específica de cada plataforma, por exemplo, acessar alguma funcionalidade a nível de hardware do dispositivo.

Neste App Guide implementamos a comunicação do Flutter com o Android que nos retorna algumas informações baseadas nas nossas requisições.

- Integração Android: android/app/src/main/kotlin/com/example/platform_channel_guide/MainActivity.kt
- Chamadas Method Channel: lib/channel/channel.dart


