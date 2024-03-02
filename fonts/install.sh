#! /bin/sh
#
# Script that runs in bin/dot and install all the fonts needed

echo "Installing fonts..."

font_names=("FiraCode" "IosevkaTerm")

for font_name in "${font_names[@]}"; do
	echo "install font $font_name..."

	curl -OL "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$font_name.zip"
	mkdir -p  "$HOME/.fonts"
	unzip -o "$font_name.zip" -d "$HOME/.fonts/$font_name/"
	fc-cache -fv
	rm -rf "$font_name.zip"
	
	echo "done!"     
done