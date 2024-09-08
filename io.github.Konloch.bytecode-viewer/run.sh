#!/bin/sh
# Based on the AUR package
opts=(
  -Dswing.crossplatformlaf='com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
  -Dawt.useSystemAAFontSettings='on'
  -Dswing.aatext='true'
  -Duser.home=$XDG_DATA_HOME # ugly hack for BCV 2.12 to save in flatpak data dir
)

# Install default settings file with the binary paths set
if ! [ -f "$XDG_DATA_HOME/.Bytecode-Viewer/settings.bcv" ]; then
  cp "/app/settings.bcv" "$XDG_DATA_HOME/.Bytecode-Viewer/settings.bcv"
fi

exec /app/jre/bin/java "${opts[@]}" -jar '/app/bin/bytecodeviewer.jar' "$@"
