
Dependency Inversion Principle (DIP)

Le principe d'inversion des dépendances est un peu un principe secondaire. En effet, 
il résulte d'une application stricte de deux autres principes, à savoir les principes OCP et LSP. 
Sa définition est la suivante:
Les modules de haut niveau ne doivent pas dépendre des modules de bas niveau. 
Les deux doivent dépendre d'abstractions.
Les abstractions ne doivent pas dépendre des détails. 
Les détails doivent dépendre des abstractions.
Par module de haut niveau, on va entendre les modules contenant les fonctionnalités métier, les modules de bas niveau gérant la communication entre machines, les logs, la persistance. Si on change le mode de fonctionnement de la base (passage de Oracle à SQL Server), du réseau (changement de protocole), de système d'exploitation, les classes métiers ne doivent pas être impactées. Inversement, le fait de changer les règles de validation au niveau de la partie métier du framework ne doit pas demander une modification de la base de données (à la limite, modifier une fonction, mais ne pas changer les briques de base).
Ce principe apporte:
Une nette diminution du couplage
Une meilleure encapsulation, l'implémentation concrète pouvant éventuellement être choisie dynamiquement



// origine.php
<?php

require_once __DIR__ . '/vendor/autoload.php';

// (...) CODE CLIENT
$customer1 = new Customer('business');
$customer1->addProduct(new Book('123456'));
$customer1->addProduct(new Book('112233'));
$customer1->buy(new OrderProcessor());
$customer2 = new Customer('personal');
$customer2->addProduct(new Book('522341'));
$customer2->buy(new OrderProcessor());
