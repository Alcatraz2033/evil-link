## Bienvenido a evil-link
Este es un script muy útil para enmascarar links personalizando su apariencia por completo. 
Es una herramienta que se aprovecha de los caracteres especiales que se pueden utilizar en los enlaces para que ingore partes del mismo enlace.
El funcionamiento de este script es muy sencillo, primero acorta el link que se va a camuflar, entre el https:// y el link acortado se escribe un '@'
que en cierta forma comenta todo lo que se escriba detras el mismo, de esta manera se puede escribir un enlace como www.google.com y quedara comentado, 
el navegador urnicamente hará la busqueda de todo lo que se encuentre despues del '@' que en este caso es el link acortado.
Se le pueden agregar más parametros para hacerlo más creíble, estos bienen separados por un caracter en hexadecimal que no afecta la estructura del enlace.

<p align="center">
	<img src="https://i.imgur.com/Lfp7yKK.png" width="50%" height="50%" align="left">
</p>

## Evil-link

### Instalación:
Instalar dependecias, clonar el repositorio y cambiar los permisos

```markdown
git clone https://github.com/Alcatraz2033/evil-link.git

chmod +x evil-link.sh

sudo ./evil-link.sh

```
