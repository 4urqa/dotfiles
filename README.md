<div align="center">

# Minima

[![License: MIT](https://img.shields.io/badge/License-MIT-black.svg?style=flat-square)](LICENSE)
[![Arch Linux](https://img.shields.io/badge/OS-Arch_Linux-1793D1?style=flat-square&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![WM: Hyprland](https://img.shields.io/badge/WM-Hyprland-00AAFF?style=flat-square&logo=hyprland&logoColor=white)](https://hyprland.org/)
[![Terminal: Kitty](https://img.shields.io/badge/Terminal-Kitty-000000?style=flat-square&logo=kitty&logoColor=white)](https://sw.kovidgoyal.net/kitty/)

</div>
<table>
  <tr>
    <td><img width="960" alt="scr_20260909000027" src="https://github.com/user-attachments/assets/3494cc40-54eb-405c-9fb7-92301839d1b4"/></td>
    <td><img width="960" alt="scr_20260909000029" src="https://github.com/user-attachments/assets/8dde1d0d-c1e0-40b6-aee9-d3ab259de06a"/></td>
  </tr>
  <tr>
    <img width="1920" height="1080" alt="scr_20260909000059" src="https://github.com/user-attachments/assets/916a5ee4-1a30-4013-b679-97da3911b37b" />
  </tr>
</table>

## Instalation
``` bash
git clone https://github.com/4urqa/dotfiles
cd dotfiles
stow config -t ~
cp bin/* ~/.local/bin
```
***warning*: if you already have existing configs in ~/.config (like hypr or kitty), move or delete them firs, otherwise stow will throw a conflict error**
