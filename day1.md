# LearningASPMVC
Repo containing learning material for ASP.NET MVC

## Models: (Fichiers .cs)

Deux types de modeles:

1. BDD (Base de donnes) implementé avec Entity
2. Les modeles de vue (ViewModel)
. Les modeles de vues sont utilises apartir du moment ou la ve dois acceder a **plus** d'une vue.



## Vue: (Fichiers .cshtml)

Gere affichages, et formulaires

## Controleur: (Fichiers .cs)

Traitements:
. Domande HTTP
. Validation Model
. Gestion BDD
. Reponse HTTP

> Le controleur est le point centrale.

# Lancement de Visual Studio 

1. Lancement d'une nouveau projet:

![Changement de config](/images/01.01_StructureDunProjet.png)

2. Web.config

![Changement de config](/images/01.02_WebConfig.png)

# Configuration de Visual Studio (Pour lancement plus facile).

![Changement de config](/images/01.05_ChangementConfig.png)

Desactiver le "Enable Edit And Continue" permet de lancer le IIS une fois. Lorsqu'on stop le debuggeur, il ne stopperas pas IIS.

Pour Stopper IIS on le stopperas directement sur IIS:

![Changement de config](/images/01.06_StopIIS.png)


## Comment ajouter un controller:

> Un controlleur c'est une **class** qui herite de **controleur** qui s'apelle **QqchControler.cs**. C'est tout (!)


![Changement de config](/images/01.07_AddController1.png)

![Changement de config](/images/01.07_AddController2.png)

![Changement de config](/images/01.07_AddController3.png)

Il cree le fichier suivant, avec un repertoir dans Views/Home
![Changement de config](/images/01.07_AddController4.png)


Lors du premier lancement, on a direct une erreur

![Changement de config](/images/01.08_FirstRun.png)

On peut le faire pointer vers une autre methode:

![Changement de config](/images/01.09_bob.png)

Il va chercher de la maniere suivante:

![Changement de config](/images/01.10_Cheminement.png)

->

> C'est normé



![Changement de config](/images/01.11_CreationHTML.png)

![Changement de config](/images/01.12_Result.png)

## Action Result:

On peut retourner plein de choses differentes.

![Changement de config](/images/01.13_ActionResult.png)

Action Result est la classe parente de tous les retours possible.
Voir pour retourner du JSON, exemple ci dessous.

![Changement de config](/images/01.14_ActionResultParent.png)
