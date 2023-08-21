# Integration Gonexa Doc - Cumulus


## Utilisation de Gonexa Doc

Pour que l'application Gonexa Doc puisse être intégrée dans une organisation salesforce  , il suffit d'ajouter un identifiant nommé "Gonexa_Doc" avec :

- "https://api.exadoc-test.gonexa.fr" pour les scratchs et dev org 

- "https://api.exadoc.gonexa.fr" pour les productions avec une action manuelle à effectuer pour ajouter un jeton de securité (https://aide.gonexa.fr/s/article/Mise-en-place-Token-securite?language=fr)


## Utilisation de Gonexa RF

L'intégration de Gonexa RF se fait en 80/20 via les métadonnées situées dans le dossier unpackaged. Un flow d'exemple permet l'intégration de ces sources (le flow "integrate_gonexa_rf_scratch") 

