# Page Object Model
En este apartado, se hará la implementación del patrón *POM*, pero:
## ¿Qué problema plantea resolver este patrón?
Este patrón cosiste principalmente en eliminar el problema de tener una clase inmensamente grande que además de interactuar con Selenium directamente, también tenía el problema que en caso de que cambien un botón, nosotros tendrían que hacer muchos cambios alrededor de nuestra clase.
## ¿Como funciona este patrón?
Este patrón plantea tratar a la página o a partes de la página que queremos probar como objetos. De estas manera, solo tendremos que hacer llamadas a esta clase, evitando duplicación de código y en el caso de tener de tener que cambiar una referencia de CSS, la haríamos directamente en la clase y el cambio se vería reflejado en todas las pruebas que acceden a la misma directamente.