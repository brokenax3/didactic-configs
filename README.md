These are the config files for personal use.

## Scripts
List of Scripts :
- dmenu_recency
- drawpad
- getBrightness
- getMuted
- getVolume
- hbd-convert
- i3exit
- locker
- matlab
- matlab-term
- optimus.sh
- pdfsort
- search-pdf
- set-intel.sh
- set-nvidia.sh
- update-grub

## Config Files
- alacritty
- dunst
- i3
- i3blocks
- rofi
- vimrc
- zathura

## Pandoc Customisation (MarkdownLatex -> pdf)
- Matlab Code Highlighting + Background
> matlab.theme
- No float figures
> customsheet.tex

### Conversion Method
```
pandoc --toc --toc-depth=4 -V geometry:margin=1in -f markdown-raw_tex -H customshee.tex labreport.md -o labreport.pdf

pandoc --toc --toc-depth=4 --highlight-style matlab.theme -V mainfont='Liberation Sans' -V monofont='Hack' -f markdown-raw_tex -H customsheet.tex report.md -o labreport.pdf --pdf-engine=xelatex
```

## Themes
- oomux-gruvbox-custom
- oomox-onedark-Test
- oomox-onedark-Darker
