# :eye_speech_bubble: Riverpod & StateNotifier

Simple projet Flutter axé sur l'utilisation de Riverpod et de son StateNotifier

## :rocket: Objectifs du projet

* Découvrir les possibilités de Riverpod
* Implémenter un StateNotifier
* Permettre à deux pages distinctes d'utiliser (afficher et mettre à jour) un objet commun

## :iphone: :arrow_right: :grin: :arrow_left: :iphone: Présentation du projet

* Le projet présente un problème (et sa solution) qui arrive très rapidement lorsqu'un projet Flutter augmente en complexité.
* Plus une application s'élargit (données traitées, nombre de pages, etc.) et plus les **données doivent circuler entre un nombre croissant de pages**, augmentant le risque d'erreur et ajoutant de la lourdeur à l'architecture.
* La solution : **partager un objet commun**, sur lequel on se "branche" pour écouter ses changements et afficher ces changements en temps réel. Ainsi, plus besoin de faire transiter les données : il suffit juste d'**écouter un widget** dont le rôle est d'avertir tout changement d'état des données.
* C'est ce que propose Riverpod avec son **StateNotifier** : un objet que l'on écoute et que l'on peut modifier en temps réel.
* Pour le projet, l'objet ``Mood(name, emoji, comment)`` est partagé entre deux pages. A chaque fois que je change mon humeur dans une page (c'est-à-dire à chaque fois que je modifie l'objet Mood), mon humeur sera partagée dans toute l'application.
* En images :

Page 1 → | Page 2  →
------------- | -------------
<img width="327" alt="Change mood to happy on page one" src="https://user-images.githubusercontent.com/41048008/109427326-31d4ac80-79f2-11eb-8f19-87a496bcfe39.png"> | <img width="325" alt="Display happy mood on page two" src="https://user-images.githubusercontent.com/41048008/109427337-41ec8c00-79f2-11eb-8562-472a158a6506.png">

Page 2 → | Page 1 
------------- | -------------
<img width="323" alt="Change mood to hopeless on page two" src="https://user-images.githubusercontent.com/41048008/109427339-444ee600-79f2-11eb-84e2-f0732edfc7e8.png"> | <img width="320" alt="Display hopeless mood on page one" src="https://user-images.githubusercontent.com/41048008/109427342-4618a980-79f2-11eb-91c1-87446694ea12.png">


## :package: Packages

* [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)

## :pushpin: Versions

* Flutter 1.22.4
* Dart 2.10.4
