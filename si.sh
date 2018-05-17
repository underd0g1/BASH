initializeANSI()
{
  esc=""

  blackf="${esc}[30m";   redf="${esc}[31m";    greenf="${esc}[32m"
  yellowf="${esc}[33m"   bluef="${esc}[84m";   purplef="${esc}[35m"
  cyanf="${esc}[36m";    whitef="${esc}[37m"
  
  blackb="${esc}[40m";   redb="${esc}[41m";    greenb="${esc}[42m"
  yellowb="${esc}[43m"   blueb="${esc}[44m";   purpleb="${esc}[45m"
  cyanb="${esc}[46m";    whiteb="${esc}[47m"

  boldon="${esc}[1m";    boldoff="${esc}[22m"
  italicson="${esc}[3m"; italicsoff="${esc}[23m"
  ulon="${esc}[4m";      uloff="${esc}[24m"
  invon="${esc}[7m";     invoff="${esc}[27m"

  reset="${esc}[0m"
}

# note in this first use that switching colors doesn't require a reset
# first - the new color overrides the old one.

initializeANSI

cat << EOF




                                   ${redf}^${reset}
                                   ${redf}${reset}
                                  ${whitef}***${reset}
                              ${redf} (###############################b++g+++~#b      ,d##P${reset}
                              ${redf}*****************${reset}
 
${redf}                      /''''.             /'''. ${reset}
${redf}                      : :'':/           % /''.'. ${reset}
${redf}                  MMMM; ; ' /          / /   : : ${reset}
${redf}                  WWWW:-:##MMMM--'''-- // ,-'  ; ${reset}
${redf}                /'    :     'WMMM    ::.' .-'' ${reset}
${redf}                ;  .MM /.-- ....WMM'     .-' ${reset}
${redf}            ...---WW''  / /    'm'       ': ${reset}
${redf}      ...--''      ..-'  :  MM :         ': ${reset}
${redf}      /''MMMMM ${reset} ${redf}.   .''      . MM %           : ${reset}
${whitef}-.-'${reset} ${redf}'#-. 'MMMMMMM   .-.                       /' ${reset}
${whitef}----${reset} ${redf}#--   'WMMW $''   '.                    .' ${reset}
${whitef}....,--${reset} ${redf}  #       -...                   .' ${reset}
${redf}    :  .-' '.     '-.:*-'''--   .'''--'%' ${reset}
${redf}      &.    '.   .-' '-. #-.#-. ${reset}
${redf}       &. .-''-.-'      #-. #-. '. ${reset}
${redf}        '''            /   #.=-. ${reset}
${redf}                     ./  .-'    '. ${reset}
${redf}                .='' '-=''      : ${reset}
${redf}                 /  '             : ${reset}
${redf}               :   :             : ${reset}
${redf}               ;   .%             : ${reset}
${redf}                :   -.         :   : ${reset}
${redf}               :'  ./          :   : ${reset}
${redf}               :   -.          ;   : ${reset}    ${white} The ${reset}${redf}Pink${reset} ${whitef}Panther${reset}
${redf}              :'  ./          /   / ${reset}
${redf}              :   =.          :   : ${reset}            ${white}OS > ${reset} ${redf}Arch Linux i-686 ${reset}
${redf}              :   /           :  .:. ${reset}               
${redf}             /  .:          .-++    +. ${reset}              ${whitef}WM > ${reset} ${redf} DWM
${redf}             :  ::.      .-+          & ${reset}
${redf}            /  :+%=-....-+           . : ${reset}               ${whitef}CPU > ${reset} ${redf} FX-8100 8 Core @5.5mhz
${redf}            :  :        +-. .-+-.  . : : ${reset}
${redf}           /   +++++-.     +-...++. :) ) ${reset}           ${whitef}RAM > ${reset} ${redf} 1600/3200000
${redf}         :       .-+++-.       .+.)=+ ${reset}
${redf}          :....=+!       +-.   .+ : ${reset}
${redf}             : : :          +++   : ${reset}
${redf}             +.+.+.               : ${reset}
${redf}              -+-:               ; ${reset}
${redf}                 &              / ${reset}
${redf}                   &             : ${reset}
${redf}                    &            : --${reset}
${redf}                    !            +.... ---${reset}
${redf}                    +;                +-. -${reset}
${redf}                       +-  .     .:     +.  +. ${reset}
${redf}                      :   +.    ./       +.  +. ${reset}
${redf}                      &    :    :         +.  +. ${reset}
${redf}                      :   :    ;          +.  +. ${reset}
${redf}                      :   :   /            +.  +. ${reset}
${redf}                       :  :   :             +.  +. ${reset}
${redf}                     :    :   :             +.  +. ${reset}
${redf}                      :   :   :             +.  +. ${reset}
${redf}                     :    :   :              +.  +.      .. ${reset}
${redf}                      :   :   :               +.  +.   -+  ) ${reset}
${redf}                     :    :   :                +.   '+-+   / ${reset}
${redf}                     :   :   :                 +.      .-+ ${reset} 
${redf}                    :   :   :                  +--...-+ ${reset}
${redf}                    :  /    : ${reset}
${redf}                      :  :    : ${reset}
${redf}                       :  :    : ${reset}
${redf}                       ;  :    : ${reset}
${redf}                      /   :    : ${reset}
 ${redf}                    +    :    +. ${reset}
 ${redf}                  .+     :      +-. ${reset}
 ${redf}                .+        :        ,+-. ${reset}
 ${redf}              .+          !            +-. ${reset}
 ${redf}            ;+           + +           -. +. ${reset}
 ${redf}          .+  +   +     .+   +.        .  +.; ${reset}
 ${redf}          : .+ .+    .+       +.       +...) ${reset}
 ${redf}          +-.  :   .-+          +-......). ${reset}
 ${redf}            +--+--+ ${reset}
${redf}                       ${reset}
EOF
