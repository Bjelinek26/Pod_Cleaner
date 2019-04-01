#/bin/bash

#source pod_cleaner.sh



cd ~/Podcasts/TWIT/

# to do: add all directories to an array
# for each loop mv to correct dir based on regex
# to do: add option to added new directory 
# and add this new directory to the array
# create functions

function hardcoded() {

      mv *android* All_About_Android/ 2>/dev/null

      mv *floss* FLOSS/ 2>/dev/null

      mv *ham* HAM/ 2>/dev/null

      mv *ios* IOS/ 2>/dev/null

      mv *mac* Macbreak_Weekly 2>/dev/null

      mv *guy* The_Tech_Guy 2>/dev/null

      mv *week* This_Week_In_Tech/ 2>/dev/null

      mv *hardware* TWICH/ 2>/dev/null
 
      mv *google* TWIG/ 2>/dev/null

      mv *specials* TWIT_Specials/ 2>/dev/null

      mv *windows* Windows_Weekly/ 2>/dev/null

      mv *security* Security_Now/FILES 2>/dev/null

}

n=1
z=1    
while read FILES
do  
  if [[ -d $FILES ]]
  then 
    echo "i am dir number ${n}"
    ((n++))
  else [[ -f $FILES ]]
    echo "i am a file numer ${z}" 
    STUFF=$FILES
    for STUFF in $STUFF
    do 
      hardcoded
    done 
   ((z++))     
  fi
done <<< $(ls)

