#!/bin/sh
# Based on the AUR package
opts=(
  -Dswing.crossplatformlaf='com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
  -Dawt.useSystemAAFontSettings='on'
  -Dswing.aatext='true'
)

exec /app/jre/bin/java "${opts[@]}" -jar '/app/bin/bytecodeviewer.jar' "$@"
