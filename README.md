# dotfiles
Mi configuracion de terminal 

Para mostrar los iconos en terminal es necesario la instalacion de la fuente nerdfont, hay ![muchas mas](https://www.nerdfonts.com/)
si prefieren utilizar otra, en lo posible que contenga todos los caracteres.

## Descarga
~~~
git clone https://github.com/Alelizzt/dotfiles.git
cd dotfiles
~~~

## Configuracion de vim
Se da por sentado que ya se tiene instalado vim o neovim

~~~
bash installplugvim.sh
~~~
El script instalara un ![manejador de plugins](https://github.com/junegunn/vim-plug) a su vez usara el tema ![gruvbox](https://github.com/morhetz/gruvbox)
una vez ejecutado el script, al iniciar vim en su modo normal ejecutar el siguiente comando en caso que no se haya aplicado el tema
~~~
:PLugInstall
~~~

## Instalacion y configuracion de zsh

En cualquier distribucion linux
~~~
bash installzsh.sh
~~~


<img src="images/zsh-linux.png"
     alt="Markdown Monster icon"
     style="float: left; margin-right: 10px;" />

En mac aun no he probado el script, sin embargo estan los comandos utilizados en el fichero
~~~
installzsh_mac.sh
~~~


     
<img src="images/zsh-mac.png"
     alt="Markdown Monster icon"
     style="float: left; margin-right: 10px;" />

