#!/bin/bash
# cat text1.txt | while read line || [[ -n $line ]];
# do
#    curl https://www.mcdelivery.com.pk/pk/browse/menu.html+${line} | grep -o '<span class="starting-price">.*</span>' | sed 's/<[^>]\+>//g' >> 123.txt 
#    # do something with $line here
# # done
# curl -sL https://www.mcdelivery.com.pk/pk/browse/menu.html | grep -o '<li class="secondary-menu-item ">.*</li>' | sed 's/href=/\nhref=/g' | \
# grep 'href=\"' | \
# sed 's/.*href="//g;s/".*//g' > URL.txt
# sed -i 's/amp;//' URL.txt

curl -sL https://www.mcdelivery.com.pk/pk/browse/menu.html | grep -o '<li class="secondary-menu-item ">.*</li>' | sed 's/<[^>]\+>//g' > deals.txt
deals=()
while read -r LINES
do
    deals+=("$LINES")
done < deals.txt

for LINES in "${deals[@]}"
do    
    echo $LINES
done
# my_array=()
# while read -r line; do
# my_array+=("$line")
# #  curl https://www.mcdelivery.com.pk/pk/browse/menu.html$line | grep -o '<span class="starting-price">.*</span>' | sed 's/<[^>]\+>//g' >> 123.txt 
# done < text1.txt
# for i in ${!my_array[@]};
# do
# curl https://www.mcdelivery.com.pk/pk/browse/menu.html${my_array[$i]} | grep -o '<span class="starting-price">.*</span>' | sed 's/<[^>]\+>//g' >> 123.txt 

# done


# readarray -t my_array < text1.txt
# my_array=
# echo "$my_array"









# while IFS= read -r line; 
# do

#  curl https://www.mcdelivery.com.pk/pk/browse/menu.html${line} | grep -o '<span class="starting-price">.*</span>' | sed 's/<[^>]\+>//g' >> 123.txt

# done < text1.txt
# arr=()
# while IFS= read -r line; do
#   arr+=("$line")
# done < text1.txt
# echo $arr

# i=0
# while read line 
# do
#         arr[$i]="$line"
#         i=$((i+1))
# done < text1.txt
# echo $arr

# while IFS= read -r line ;do
#         echo $line
        
# done < text1.txt
# array= {$line}
#         for i in "${array[@]}"
#             do
# 	            echo $i
#             done

# while [ $text1.txt -lt 2 ]
# do
# index=0
# while read line ; do
#     MYARRAY[$index]="$line"
    
# curl https://www.mcdelivery.com.pk/pk/browse/menu.html${line} | grep -o '<span class="starting-price">.*</span>' | sed 's/<[^>]\+>//g' >> 123.txt
#     index=$(($index+1))
#  done    