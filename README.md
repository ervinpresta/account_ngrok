# 🛍️ PrestaShop avec Ngrok — `account_ngrok`

Ce projet permet de lancer une ou deux boutiques PrestaShop accessibles publiquement via Ngrok

---

## ⚙️ Prérequis

1. Crée un compte gratuit sur [https://dashboard.ngrok.com]
2. Récupère :
   - Ton **token Ngrok** (NGROK_AUTHTOKEN)
   - Ton **domaine ngrok** (PS_DOMAIN) comme `a123-456-789.ngrok-free.app`

---

## 🛠️ Configuration

Crée un fichier `.env` à la racine du projet avec ce contenu :

.env = 
NGROK_AUTHTOKEN="ton_token_ngrok"
PS_DOMAIN="ton_domaine_ngrok"

## Lancer une boutique (MonoShop)

Commande = make monostore

URL d’accès à la boutique : https://ton_domaine_ngrok/

## Lancer deux boutiques (MultiStore)

Commande = make multistore

URL d’accès à la boutique : https://ton_domaine_ngrok/shop1 et https://ton_domaine_ngrok/shop2

## Nettoyer l’environnement

Avant de relancer un nouveau build, pense à nettoyer 

Commande = make down 
=> Cela supprime les containers, volumes et données pour repartir propre.

## Modifier la version de PrestaShop

Pour changer la version, va sur https://hub.docker.com/r/prestashop/prestashop/tags

Puis, modifie la ligne dans docker-compose.yml : 
image: prestashop/prestashop:**tag de la version souhaitée** (ex: 8.1-apache)
