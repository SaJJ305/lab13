#!/bin/bash

SOURCE="normalize.c"
APP_NAME="normalize"

echo "Podaj folder instalacji (ścieżka absolutna) (e.g. $HOME/bin):"
read INSTALL_DIR

if [ ! -d "$INSTALL_DIR" ] || [ ! -w "$INSTALL_DIR" ]; then 
   echo "BŁĄD: ścieżka nie istnieje"
   exit 1
fi

echo "Kompiluję..."

gcc $SOURCE -o $APP_NAME

if [ $? -ne 0 ]; then
   echo "BŁĄD: problem z komplikacją"
   exit 1
fi

echo "Przenosze plik do $INSTALL_DIR...":

mv $APP_NAME $INSTALL_DIR

echo "Koniec"
echo
echo "Dodaj $INSTALL_DIR do PATH."
echo "Np. skopiuj i wklej to do terminala (albo na koniec pliku .bashrc):"
echo "export PATH=\"\$PATH:$INSTALL_DIR\""
 
