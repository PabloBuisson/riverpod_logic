# :eye_speech_bubble: Riverpod & StateNotifier

Simple projet Flutter axé sur l'utilisation de Riverpod et de son StateNotifier

## :rocket: Objectifs du projet

* Découvrir les possibilités de Riverpod
* Implémenter un StateNotifier
* Permettre à deux pages distinctes d'utiliser (afficher et mettre à jour) un objet commun

## Présentation du projet

* Le projet présente un problème (et sa solution) qui arrive très rapidement lorsqu'un projet Flutter augmente en complexité.
* Plus une application s'élargit (données traitées, nombre de pages, ect.) et plus les **données doivent circuler entre un nombre croissant de page**, augmentant le risque d'erreur et ajoutant de la lourdeur à l'architecture.
* La solution : **partager un objet commun**, sur lequel on se "branche" pour écouter ses changements et afficher ces changements en temps réel. Ainsi, plus besoin de faire transiter les données : il suffit juste d'**écouter un widget** dont le rôle est d'avertir tout changement d'état des données.
* C'est ce que propose Riverpod avec son **StateNotifier** : un objet que l'on écoute et que l'on peut modifier en temps réel.
* Pour le projet, l'objet ``Mood(name, emoji, comment)`` est partagé entre deux pages. A chaque fois que je change mon humeur dans une page (c'est-à-dire à chaque fois que je modifie l'objet Mood), mon humeur sera partagée dans toute l'application.

## :package: Packages

* [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)

## :pushpin: Versions

* Flutter 1.22.4
* Dart 2.10.4
