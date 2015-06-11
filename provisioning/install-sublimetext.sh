#!/bin/bash

wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2

tar -C /opt -xjf "Sublime Text 2.0.2 x64.tar.bz2"

ln -s /opt/Sublime\ Text\ 2/sublime_text /usr/bin/sublime

echo "[Desktop Entry]" >> /usr/share/applications/sublime.desktop
echo "Version=2.0.1" >> /usr/share/applications/sublime.desktop
echo "Name=Sublime Text 2" >> /usr/share/applications/sublime.desktop
echo "# Only KDE 4 seems to use GenericName, so we reuse the KDE strings." >> /usr/share/applications/sublime.desktop
echo "# From Ubuntu's language-pack-kde-XX-base packages, version 9.04-20090413." >> /usr/share/applications/sublime.desktop
echo "GenericName=Text Editor" >> /usr/share/applications/sublime.desktop
echo "" >> /usr/share/applications/sublime.desktop
echo "Exec=sublime" >> /usr/share/applications/sublime.desktop
echo "Terminal=false" >> /usr/share/applications/sublime.desktop
echo "Icon=/opt/Sublime Text 2/Icon/48x48/sublime_text.png" >> /usr/share/applications/sublime.desktop
echo "Type=Application" >> /usr/share/applications/sublime.desktop
echo "Categories=TextEditor;IDE;Development" >> /usr/share/applications/sublime.desktop
echo "X-Ayatana-Desktop-Shortcuts=NewWindow" >> /usr/share/applications/sublime.desktop
echo "" >> /usr/share/applications/sublime.desktop
echo "[NewWindow Shortcut Group]" >> /usr/share/applications/sublime.desktop
echo "Name=New Window" >> /usr/share/applications/sublime.desktop
echo "Exec=sublime -n" >> /usr/share/applications/sublime.desktop
echo "TargetEnvironment=Unity" >> /usr/share/applications/sublime.desktop