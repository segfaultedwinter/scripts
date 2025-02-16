sudo pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils egl-wayland hyprland hyprpaper waybar nwg-look pipewire pipewire-pulse wireplumber xdg-desktop-portal-hyprland networkmanager ly neovim firefox git kitty base-devel noto-color-emoji wget p7zip pwvucontrol python3

echo "done!"

sudo systemctl enable ly.service
sudo systemctl enable NetworkManager.service
systemctl --user enable pipewire-pulse pipewire wireplumber

echo "all necessary services enabled"

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

echo "yay installed"

sudo yay -S vesktop

curl -LsSO "https://raw.githubusercontent.com/catppuccin/gtk/v1.03/install.py"
python3 install.py mocha sapphire

rm install.py

echo "done"

sudo wget https://int10h.org/oldschool-pc-fonts/download/oldschool_pc_font_pack_v2.2_linux.zip -P ~/Downloads/

cd ~/Downloads/

mkdir OldSchoolFonts

7z e oldschool_pc_font_pack_v2.2_linux.zip -oOldSchoolFonts

sudo pacman -Rns p7zip

sudo mv OldSchoolFonts /usr/share/fonts/

sudo fc-cache -f

echo "done!"

cd

git clone https://github.com/segfaultedwinter/dotfiles

mv ./dotfiles/config ~/.config

reboot
