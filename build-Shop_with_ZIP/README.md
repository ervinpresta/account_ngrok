# 🛍️ PrestaShop avec ZIP — `shop_with_zip`

Ce projet permet de créer une boutiques PrestaShop à partir d'un zip, accessibles publiquement via Ngrok

---

## ⚙️ Prérequis

1. Crée un compte gratuit sur [https://dashboard.ngrok.com]
2. Récupère :
   - Ton **token Ngrok** (NGROK_AUTHTOKEN)
   - Ton **domaine ngrok** (PS_DOMAIN) comme `a123-456-789.ngrok-free.app`

---

Dézipper le dossier de la version souhaitez contenant le prestashop.zip

---

![alt text](/build-Shop_with_ZIP/screenshots_for_readme/image.png)

---

Gilsser le prestashop.zip à la racine du dossier build-Shop_with_ZIP

---

![alt text](/build-Shop_with_ZIP/screenshots_for_readme/image1.png)

---

##  AVANT TOUTE ACTION ALLEZ DANS LE BON DOSSIER: => DANS LE TERMINAL TAPER LA COMMANDE "CD build-Shop_with_ZIP"

---

## 🛠️ Configuration

Crée un fichier `.env` à la racine du dossier build-Shop_with_Ngrok avec ce contenu (exemple dans le .env.dist) :
```
   -  NGROK_AUTHTOKEN="ton_token_ngrok"
   -  PS_DOMAIN="ton_domaine_ngrok"

```

---

## Lancer le build de la shop

Dans le terminal lancer la Commande = 

```make shop```
      
Cette commande :
   - Lance lance le build de la shop contenue dans le prestashop.zip
   - Démarre tous les conteneurs nécessaires en arrière-plan

URL d’accès à la boutique : https://ton_domaine_ngrok/

---

Lorsque vous accedez à la shop lancer l'installation habituelle

---

![alt text](/build-Shop_with_ZIP/screenshots_for_readme/image2.png)

---

Au step Store information, cocher oui pour le champ “Enable SSL”

---

![alt text](/build-Shop_with_ZIP/screenshots_for_readme/image3.png)

---

Au step System configuration, pour la BDD rentrer “mysql” et il faut s'assurer que la Tables prefix est ps_

---

![alt text](/build-Shop_with_ZIP/screenshots_for_readme/image4.png)

---

Un fois l'installation de la shop terminé, dans docker desktop allez dans le container de la shop puis dans "exec"

Puis supprimer le ficher d'install avec la commande suivante :

```rm -rf install```

---

![alt text](/build-Shop_with_ZIP/screenshots_for_readme/image5.png)

---
