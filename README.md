# Travail pratique 3

## Description

Ce programme permet de générer aléatoirement des labyrinthes sur une grille
carrée. Une fois compilé, l'exécutable principal est ``bin/tp3``. Un aperçu des
options disponibles peut être obtenu comme suit :

~~~
 $ bin/tp3 --help                                                              
Usage: bin/tp3 [--help] [--with-solution] [--num-rows VALUE] [--num-cols VALUE] 
    [--output-format STRING] [--output-filename FILENAME]                      
                                                                               
Generates a random maze on the square grid.                                    
                                                                               
Optional arguments:                                                            
  --help                   Show this help message and exit                     
  --num-rows VALUE         The number of rows in the maze.                     
                           The default value is 5.                             
  --num-cols VALUE         The number of columns in the maze.                  
                           The default value is 5.                             
  --with-solution          Also displays solution in the maze.                 
  --output-format STRING   Selects the ouput format (either "text" or "png").  
                           The default format is "text".                       
  --output-filename STRING The name of the output file.                        
                           Mandatory for png format.                           
                           If not specified, displays on stdout.               
~~~
                                                                               

## Auteur

Alexandre Blondin Massé

## Installation

Actuellement, l'installation se fait uniquement à partir du code source. Il
suffit de cloner le projet, et ensuite de taper

~~~
make
~~~

L'exécutable se trouve dans le répertoire `bin`. Il suffit ensuite d'entrer
`bin/tp3 --help` pour afficher l'aide du programme.

## Fonctionnement

Par défaut, la commande `bin/tp3` affiche un labyrinthe de dimensions 5 par 5
sur `stdout` :

~~~
+-+-+-+-+-+
|         |
+ + +-+-+ +
| |   | | |
+ +-+-+ + +
| |   | | |
+ + + + + +
|   |   | |
+-+ + +-+ +
|   | |   |
+-+-+-+-+-+
~~~

Différentes options sont disponibles (voir `bin/tp3 --help` pour plus de
détails). Par exemple, on peut modifier le nombre de rangées et de colonnes :

~~~
$ bin/tp3 --num-rows 2 --num-cols 2
+-+-+
|   |
+ + +
| | |
+-+-+
~~~

Il est également possible d'afficher la solution du labyrinthe, en supposant
qu'on commence en haut à gauche et qu'on termine en bas à droite :

~~~
$ bin/tp3 --num-rows 6 --num-cols 8 --with-solution
+-+-+-+-+-+-+-+-+
|X|XXXXXXXXXXXXX|
+X+X+-+-+ +-+-+X+
|XXX  |   |   |X|
+ +-+-+-+-+-+ +X+
|     | |      X|
+-+ + + +-+-+-+X+
| | |   |   |  X|
+ + + +-+-+ +-+X+
|   |     |    X|
+ +-+ + +-+ + +X+
| |   | |   | |X|
+-+-+-+-+-+-+-+-+
~~~

Finalement, il est également possible de produire une image au format PNG,
grâce à la bibliothèque [Cairo](http://cairo.org/). Par exemple, la commande

~~~
$ bin/tp3 --num-rows 4 --num-cols 7 --output-format png --output-filename maze.png
~~~

produit un fichier `maze.png`, qui devrait ressembler à

![](images/maze.png)

## Plateformes supportées

Testé sur MacOS 10.10.5 Yosemite et sur malt.labunix.uqam.ca.

## Dépendances

- [Cairo](http://cairo.org/), une bibliothèque permettant de générer des images
  au format PNG. Cette bibliothèque doit être installée sur le système pour que
  le projet fonctionne.
- [CUnit](http://cunit.sourceforge.net/), pour les tests unitaires. Cette
  bibliothèque doit être installée pour que la commande `make test` fonctionne
  correctement.

## License

Le contenu de ce projet est sous [licence GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html).
