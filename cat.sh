f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
d=$'\e[1m'
t=$'\e[0m'
v=$'\e[7m'

gtkrc="$HOME/.gtkrc-2.0"
GtkTheme=$( grep "gtk-theme-name" "$gtkrc" | cut -d\" -f2 )
GtkIcon=$( grep "gtk-icon-theme-name" "$gtkrc" | cut -d\" -f2 )
GtkFont=$( grep "gtk-font-name" "$gtkrc" | cut -d\" -f2 )

# Wallpaper set by feh
Wallpaper=$(cat ~/.fehbg | cut -c 16-70)

# Settings from ~/.Xdefaults
xdef="~/.Xdefaults"
TermFont="$(grep 'font' ~/.Xdefaults | awk '{print $2}' | cut -d ":" -f2 | cut -d ":" -f1)"

# Time and date
time=$( date "+%H.%M")
date=$( date "+%a %d %b" )

# OS
OS=$(uname -r)
dist=$(cat /etc/*-release | grep -i name | cut -d'=' -d'"' -f2 | sed -n 1p)
bit=$(uname -m)

# WM version
wm=$(wmctrl -m | grep -i name | awk '{print $2}')

# Other
UPT=`uptime | awk -F'( |,)' '{print $2}' | awk -F ":" '{print $1}'`
uptime=$(uptime | sed 's/.*up \([^,]*\), .*/\1/')
uptime2=$(uptime | sed -nr 's/.*\s+([[:digit:]]{1,2}):[[:digit:]]{2},.*/\1/p')
size=$(df | grep '^/dev/[hs]d' | awk '{s+=$2} END {printf("%.0f\n", s/1048576)}')
use=$(df | grep '^/dev/[hs]d' | awk -M '{s+=$3} END {printf("%.0f\n", s/1048576)}')
gb=$(echo "G")
pac=$(pacman -Qe | wc -l)
pacman=$(pacman -Q | wc -l)
COUNT=$(cat /proc/cpuinfo | grep 'model name' | sed -e 's/.*: //' | wc -l)
cpu=$(lscpu | grep 'Model name' | awk -F ':' '{print $2}' | cut -c13-40)
#laptop=$(dmidecode | grep Product)
lap1=$(cat /sys/class/dmi/id/sys_vendor)
lap2=$(cat /sys/class/dmi/id/product_name)
vga=$(lspci | grep -i vga | cut -c62-75)
memkb=$(grep MemTotal /proc/meminfo | awk '{print $2}')
ram=$(expr $memkb / 1024)

cat << EOF
$f7$d                                                                                                                                   
$f7                            .      'o;       .                                                                                     
$f7                          ;Nd   'dNMMo   'oKMd                            .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM             
$f7                         oMMX.oXMMMMMOl0WMMMMd  ..,:cl.                  MM                                           MM           
$f7                        dMMMMMMMMMMMMMMMMMMMMNKWMMMMMMd                 MM                                             MM          
$f7           .,:ldkO0KXXXXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMX                 MM      .dOkc  MM  MM  MM  %$      MM          MM
$f7     .;oONMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.                MM      KX  Ml MM  MM  MM  @#      MM          MM
$f7     kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM'                MM     X0      MM  MM  NN  #$      MM          MM
$f7     .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM;                MM     X0      MKMMMM  TT  !@      MM          MM
$f7      kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM:                MM     KK   Ml Mk  MM  ES  !#      MM          MM
$f7       NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0                MM      'OXXx' XM  MM  EE  MM!@!@  #$$%^&    MM    
$f7       'WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMx               MM                                             MM          
$f7        :MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM:              cK;                                           MM          
$f7         oMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMW.              .OW.   .:MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM            
$f7          dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd              x0..ckOo,                                                 
$f7           oMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk KW            'XNkko'            $f6 $USER $f7@ $f1 hide4
$f7            oMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk kM;          .Ol'                $H $f4$time$NC - $f7$date
$f7             :WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXMMNx.                                                                    
$f7              :MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWMMMMMMMMMMMMMM0.                                                                    
$f7              .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  MMMMMMMM' OMMMOl         OS »$f4 Arch Linux
$f7               NMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  MMMMMMMMKxMM0X:         $f7 WM »$f4 Awesome 
$f7               .NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMW;             
$f7                KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO.              Theme » N/A 
$f7               kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0,                Icon  » N/A 
$f7              cMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNk;.                  Font  » $GtkFont » $f6 Terminus 9
$f7              c;'.dMMMMMMMMMMMMMMMMMMMMMMMM$t$f1 KKK0kxd             $d$f7        
$f7                  OMMMMMMMMMMMMMMMMXdlc;'.  $t$f1 :ddxx,             $d$f7        $r Rolling Release with $f2$ram$f7 MB Memory  
$f7                  WMM"'   NMMMMMMk'            $t$f1 lxx.            $d$f7        pacman » $f2$pacman$f7 on $f2$size$f7 GB
$f7                  W       ,MMMM0.              $t$f1 .xxo            $d$f7        
$f7                           :MN;                $t$f1  ;xx;           $d$f7        
$f7                            '.                 $t$f1   dxx.          $d$f7        $cpu > Intel i-7 6700k @ 4.2ghz
$f7                                               $t$f1   'xxx.         $d$f7         > $lap1 $lap2 
$f7                                               $t$f1    dxxxc.       $d$f7         > GeForce GTX 1080
$f7          "..The saddest thing in life         
$f7		is wasted talent"     			  		         
$f7                       >$f1 underd0g $f7                         
$f7                                                       
$f7
                                                                        
