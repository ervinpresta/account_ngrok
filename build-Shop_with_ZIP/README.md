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

##  AVANT TOUTE ACTION ALLEZ DANS LE BON DOSSIER: => DANS LE TERMINAL TAPER LA COMMANDE "CD build-Shop_with_Ngrok"

---

## 🛠️ Configuration

Crée un fichier `.env` à la racine du dossier build-Shop_with_Ngrok avec ce contenu (exemple dans le .env.dist) :
```
   -  NGROK_AUTHTOKEN="ton_token_ngrok"
   -  PS_DOMAIN="ton_domaine_ngrok"

```
---

---

## Lancer le build de la shop

Dans le terminal lancer la Commande = 

```make shop```
      
Cette commande :
   - Lance lance le build de la shop contenue dans le prestashop.zip
   - Génère automatiquement le fichier ngrok.yml pour exposer la boutique via Ngrok
   - Démarre tous les conteneurs nécessaires en arrière-plan

URL d’accès à la boutique : https://ton_domaine_ngrok/

---