# Creador de instalador de módulos de e-Sword en Inno Setup 
Este es el código fuente del instalador de módulos que estoy creando para intalar varios modulos de e-Sword en mi ordenador, necesitas:

**Descargar Inno Setup**
[https://jrsoftware.org/isdl.php](https://jrsoftware.org/isdl.php)

Este es el código del instalador en **Inno Setup** para el programa **e-Sword**. Este script incluye imágenes personalizadas en la ventana del instalador y copiará todo el contenido de la carpeta `modulos` en el directorio `C:\Program Files\e-Sword\`.

### Explicación del código del archivo e-sword.iss
1. **SetupIconFile**: Usa el icono `e-Sword.ico` como icono del instalador.
2. **WizardImageFile**: Define la imagen a la izquierda del instalador con `Tux_+_e-Sword.png` (164x370 píxeles).
3. **WizardSmallImageFile**: Imagen pequeña opcional (53x53 píxeles) en la esquina superior derecha con `Mi_Señor_Jesús.png`.
4. **[Files]**: El script copia todo el contenido de la carpeta `modulos` al directorio de instalación (`C:\Program Files\e-Sword`).
5. **[Icons]**: Crea un icono en el escritorio para ejecutar **e-Sword** con el icono `e-Sword.ico`.

### Pasos para compilar:
1. Debe estar presente el código en el archivo e-sword.iss.
2. Asegúrate de que los archivos `e-Sword.ico`, `Tux_+_e-Sword.png`, y `Mi_Señor_Jesús.png` están en la misma carpeta que el script `.iss`.
3. Abre Inno Setup y compila el instalador.

Este instalador copiará todos los archivos de la carpeta `modulos` y personalizará la interfaz con las imágenes (usted si desea las puede cambiar).