#!/bin/bash
#
#                                       
# MMMMMMMMMMMMMMMMMMMMMMMMMmds+.        
# MMm----::-://////////////oymNMd+`     
# MMd      /++                -sNMd:    
# MMNso/`  dMM    `.::-. .-::.` .hMN:   
# ddddMMh  dMM   :hNMNMNhNMNMNh: `NMm   
#     NMm  dMM  .NMN/-+MMM+-/NMN` dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  .mmd  `mmm   yMM. dMM   
#     NMm  dMM`  ..`   ...   ydm. dMM   
#     hMM- +MMd/-------...-:sdds  dMM   
#     -NMm- :hNMNNNmdddddddddy/`  dMM   
#      -dMNs-``-::::-------.``    dMM   
#       `/dMNmy+/:-------------:/yMMM  
#          ./ydNMMMMMMMMMMMMMMMMMMMMM  
#             \.MMMMMMMMMMMMMMMMMMM    
#                                      
#
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
# 
# More from Erik Dubois
#
# Aurora Conky
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at 
# http://erikdubois.be/category/linux/aurora-conky/
# 
# Aureola Conky
# Collections of nice conky's with lua syntax
# https://github.com/erikdubois/Aureola
#
# Sardi icons
# Many different styles of icons from colourfull, monochrome, white, circle
# https://sourceforge.net/projects/sardi/
#
# Super Ultra Flat Numix Remix
# Colourfull and playfull icons
# https://github.com/erikdubois/Super-Ultra-Flat-Numix-Remix
#
# Check out the github - many more scripts for automatic installation of Linux Systems.
#
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

# if there is no hidden folder then make one
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
cp -rf usr/share/themes/* $HOME"/.themes"

echo "Let us rename the folders so they are unique :"
echo "Your name will be added after 'Mint-Y', 'Mint-Y-Dark' or 'Mint-Y-Darker'."
echo "E.g. Mint-Y-Sun" 

read -p "How should we name this new theme? First letter is a capital letter : " choice

echo "Renaming the folders"

mv $HOME"/.themes/Mint-Y" $HOME"/.themes/Mint-Y-"$choice
mv $HOME"/.themes/Mint-Y-Dark" $HOME"/.themes/Mint-Y-Dark-"$choice
mv $HOME"/.themes/Mint-Y-Darker" $HOME"/.themes/Mint-Y-Darker-"$choice

echo "################################################################" 
echo "Renaming the content of the index.theme"
echo "Mint-Y-Darker-$choice"
find $HOME"/.themes/Mint-Y-Darker-"$choice -name "index.theme" -type f -exec sed -i 's/'Name=Mint-Y-Darker'/'Name=Mint-Y-Darker-$choice'/g' {}  \;
find $HOME"/.themes/Mint-Y-Darker-"$choice -name "index.theme" -type f -exec sed -i 's/'GtkTheme=Mint-Y-Darker'/'GtkTheme=Mint-Y-Darker-$choice'/g' {}  \;
find $HOME"/.themes/Mint-Y-Darker-"$choice -name "index.theme" -type f -exec sed -i 's/'MetacityTheme=Mint-Y-Dark'/'MetacityTheme=Mint-Y-Darker-$choice'/g' {}  \;
echo "################################################################" 
echo "Renaming inside the index.theme"
echo "Mint-Y-Dark-$choice"
find $HOME"/.themes/Mint-Y-Dark-"$choice -name "index.theme" -type f -exec sed -i 's/'Name=Mint-Y-Dark'/'Name=Mint-Y-Dark-$choice'/g' {}  \;
find $HOME"/.themes/Mint-Y-Dark-"$choice -name "index.theme" -type f -exec sed -i 's/'GtkTheme=Mint-Y-Dark'/'GtkTheme=Mint-Y-Dark-$choice'/g' {}  \;
find $HOME"/.themes/Mint-Y-Dark-"$choice -name "index.theme" -type f -exec sed -i 's/'MetacityTheme=Mint-Y-Dark'/'MetacityTheme=Mint-Y-Dark-$choice'/g' {}  \;
echo "################################################################" 
echo "Renaming inside the index.theme"
echo "Mint-Y-$choice"
find $HOME"/.themes/Mint-Y-"$choice -name "index.theme" -type f -exec sed -i 's/'Name=Mint-Y'/'Name=Mint-Y-$choice'/g' {}  \;
find $HOME"/.themes/Mint-Y-"$choice -name "index.theme" -type f -exec sed -i 's/'GtkTheme=Mint-Y'/'GtkTheme=Mint-Y-$choice'/g' {}  \;
find $HOME"/.themes/Mint-Y-"$choice -name "index.theme" -type f -exec sed -i 's/'MetacityTheme=Mint-Y'/'MetacityTheme=Mint-Y-$choice'/g' {}  \;

echo "The themes have been renamed and moved to your home folder"
echo "in the hidden folder .themes"
echo "The folder was created if you did not have one."
echo "If you made a mistake, delete the folders in .themes and run the script again."
echo "Select icon theme with your icon theme manager and enjoy!"
