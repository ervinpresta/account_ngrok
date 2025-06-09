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

---

## Lancer une boutique (MonoShop)

Commande = make monostore
      
Cette commande :
-Lance une seule boutique PrestaShop (shop1)
-Commente la ligne PHYSICAL_URI dans docker-compose.yml
-Génère automatiquement le fichier ngrok.yml pour exposer la boutique via Ngrok
-Démarre tous les conteneurs nécessaires en arrière-plan

URL d’accès à la boutique : https://ton_domaine_ngrok/

---

## Lancer deux boutiques (MultiStore - Multi-Instance) NE FONTIONNE PAS AVEC FLASHLIGHT !! IMAGE PRESTASHOP/PRESTASHOP UNIQUEMENT

Commande = make multistore

Cette commande :
-Décommente la ligne PHYSICAL_URI dans docker-compose.yml
-Active deux boutiques PrestaShop (shop1 et shop2)
-Active deux boutiques en multi-instance, donc deux BDD sont créées
-Génère le fichier ngrok.yml pointant vers le reverse proxy nginx_proxy
-Utilise un reverse proxy Nginx pour rediriger /shop1 et /shop2
-Démarre tous les conteneurs nécessaires en arrière-plan

URL d’accès à la boutique : https://ton_domaine_ngrok/shop1 et https://ton_domaine_ngrok/shop2

---

## Lancer une boutique (flashlight)

Commande = make flashlight
      
Cette commande :
-Lance une boutique PrestaShop Flashlight
-Génère automatiquement le fichier ngrok.yml pour exposer la boutique via Ngrok
-Démarre tous les conteneurs nécessaires en arrière-plan

URL d’accès à la boutique : https://ton_domaine_ngrok/

---

## Nettoyer l’environnement

Avant de relancer un nouveau build, pense à nettoyer 

Commande = make down 

Cette commande :
-Arrête tous les conteneurs Docker (monostore, multistore, flashlight)
-Supprime les volumes associés
-Supprime le fichier ngrok.yml généré
-Réactive la ligne PHYSICAL_URI dans docker-compose.yml si elle avait été commentée

---

## Modifier la version de PrestaShop

Pour changer la version, va sur https://hub.docker.com/r/prestashop/prestashop/tags

Puis, modifie la ligne dans docker-compose.yml : 
image: prestashop/prestashop:**tag de la version souhaitée** (ex: 8.1-apache)
=>Tu peux adapter cela pour shop1, shop2, ou tout autre conteneur que tu ajoutes.

---

## Modifier la version de PrestaShop Flashlight

Pour changer la version, va sur https://hub.docker.com/r/prestashop/prestashop-flashlight/tags

Puis, modifie la ligne dans docker-compose.yml : 
image: prestashop/prestashop-flashlight:**tag de la version souhaitée** (ex:nightly-nginx)
=>Tu NE PEUX PAS adapter cela pour shop1, shop2 !!! Concerne uniquement Flashlight

---
