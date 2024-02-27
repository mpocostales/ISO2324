import os

if os.getuid() != 0:
    print("No eres root")
    exit()

while True:
    print("1- Muestra información del SSOO e información de la CPU")
    print("2- Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.")
    print("3- Pedir al usuario un directorio. Comprobar si existe y si es un directorio, en caso contrario, lo crea.")
    print("4- Salir")

    opcion = int(input("Seleccione una opción: "))

    if opcion == 1:
        print("Ha elegido la opción 1")
        os.system("uname")
        os.system("lscpu")

    if opcion == 2:
        usuario = input("Introduzca nombre de usuario: ")
        infousuario = os.popen("id " + usuario)
        if infousuario:
            print(infousuario)
        else:
            os.system("useradd -m " + usuario)
            print(usuario, "creado correctamente")

    if opcion == 3:
        directorio = input("Introduce un directorio: ")
        if not os.path.exists(directorio):
            os.makedirs(directorio)
            print(directorio, "creado")
        else:
            print("El directorio ya existe")

    if opcion == 4:
        print("Saliendo del programa.")
        exit()
    else:
        print("Opción no válida. Inténtelo de nuevo.")

