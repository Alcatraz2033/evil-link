## Bienvenido a evil-link

<h3><p align="center">Advertencia</p></h3>

Cualquier acción o actividad relacionada con evil-link es de su exclusiva responsabilidad. El uso indebido de este conjunto de herramientas puede dar lugar a cargos penales contra las personas en cuestión. Los contribuyentes no serán responsables en caso de que se presenten cargos penales contra cualquier persona que haga un uso indebido de este conjunto de herramientas para infringir la ley.

Este conjunto de herramientas contiene materiales que pueden ser potencialmente dañinos o peligrosos para las redes sociales. Consulte las leyes de su provincia/país antes de acceder, usar o de cualquier otra forma utilizar esto de manera incorrecta.

Esta herramienta está hecha solo con fines educativos. No intente violar la ley con nada de lo contenido aquí. Si esta es tu intención, entonces ¡Vete de aquí!

Solo demuestra "cómo camuflar un link". No debe hacer un mal uso de la información para engañar a otra persona. Sin embargo, puede probar esto bajo su propio riesgo.

##

Este es un script muy útil para enmascarar links personalizando su apariencia por completo. 
Es una herramienta que se aprovecha de los caracteres especiales que se pueden utilizar en los enlaces para que ingore partes del mismo enlace.
El funcionamiento de este script es muy sencillo, primero acorta el link que se va a camuflar, entre el https:// y el link acortado se escribe un '@'
que en cierta forma comenta todo lo que se escriba detras el mismo, de esta manera se puede escribir un enlace como www.google.com y quedara comentado, 
el navegador urnicamente hará la busqueda de todo lo que se encuentre despues del '@' que en este caso es el link acortado.
Se le pueden agregar más parametros para hacerlo más creíble, estos bienen separados por un caracter en hexadecimal que no afecta la estructura del enlace.

<p align="left">
	<img src="https://i.imgur.com/Lfp7yKK.png" width="75%" height="75%" align="">
</p>

## Instalación

Clonar el repositorio y cambiar los permisos

```markdown
sudo apt install html2text
git clone https://github.com/Alcatraz2033/evil-link.git
cd evil-link
chmod +x evil-link.sh
sudo ./evil-link.sh
```
