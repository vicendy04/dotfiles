sudo nano /etc/dnf/dnf.conf 
sudo dnf upgrade
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf upgrade --refresh
sudo dnf groupupdate core
rm -rf .mozilla/
sudo dnf remove firefox
sudo dnf install firefox neovim numlockx git
sudo nvim /etc/lightdm/lightdm.conf
sudo dnf install xdotool xrandr xsetroot
sudo dnf swap ffmpeg-free ffmpeg --allowerasing
sudo dnf install ffmpegthumbnailer mpv
sudo dnf autoremove
