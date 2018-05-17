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




${whitef}                  MB  ${reset}
${whitef}   mm.           dM8 ${reset}
${whitef}   YMMMb.       dMM8 ${reset}   ${redf} PlayBoy${reset} ${whitef}Bunny ${reset}
${whitef}    YMMMMb     dMMM ${reset}        
${whitef}     `YMMMb   dMMMP  ${reset}      
${whitef}       `YMMMM     MMM'   ${reset}
${whitef}         "BMbdMP     ${reset}
${whitef}      .dMMMMMM.P'     ${reset}
${whitef}     dMM  MMMMMM'    ${reset}
${whitef}     8MMMMMMMMMMI'    ${reset} ${whitef}OS > ${reset}${redf}Arch Linux I-686${reset}
${whitef}      YMMMMMMMMM'     ${reset} ${whitef}CPU >${reset}${redf} FX-8100 8-core 7GHZ${reset}
${whitef}        "MMMMMMP'     ${reset} ${whitef}RAM >${reset}${redf} 2200/320000${reset}
${redf}     MxM$ ${reset}${whitef}mmmmmm      ${reset}
${redf}     W"W ${reset}${whitef} mmmmmm      ${reset}




 
