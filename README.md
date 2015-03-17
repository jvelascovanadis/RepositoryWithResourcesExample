# RepositoryWithResourcesExample
RepositoryWithResourcesExample

Importante, al hacer la prueba de integración del Storyboard de Login/Register en el proyecto de ejemplo, hemos descubierto que, en principio, no aplicaba bien el tamaño del storybaord en la pantalla.

Indagando:  

    NSLog(@"frame: %@", NSStringFromCGRect(vc.view.frame));
    
    NSLog(@"window height: %f",[[UIScreen mainScreen] bounds].size.height);
    NSLog(@"window width: %f",[[UIScreen mainScreen] bounds].size.width);

Resulta que este fallo se producía debido al “Launch”. Como ahora en los proyectos nuevos se usa un LaunchScreen.XIB sin una forma definida, el tamaño que nos devolvía invariablemente era de 480 de alto.

Solución 1:

 Hemos incluido en el proyecto de ejemplo de uso del componente la clásica “Launch image” asegurándonos de eliminar del Info.plist la entrada que indica que como Launch se usará un XIB.

A continuación, en TARGETS -> TestPods -> General -> App Icons and Launch Images nos aseguramos de elegir la fuente “Launch Images source” del image.xcassets.

Solución BUENA:

Investigar como funciona bien lo del LaunchScreen.xib :-)


LOCALIZACIÓN DE POD:
--------------------

Hemos incluido también la posibilidad de internacionalizar los textos de interfaz de usuario de los componentes. Para ello, tenemos que tener en cuenta:

1.- Los mensajes de texto se incluyen de la siguiente manera:

NSLocalizedStringFromTableInBundle(@"LOGIN_INFO", @"Localizable", [[self class] frameworkBundle], @"")  


2.- En los proyectos donde se use este Pod, deberán también estar configurados para los idiomas "Localizations" inglés y español.

3.- Para internacionalizar los XIb y storyboards, a tener en cuenta de marcar "Use Base Internationalization" porque es la manera de poder usar la opción de "Localizable strings" a la hora de internacionalizar los elementos visuales.







