#!/bin/bash
# curl -sL https://www.mcdelivery.com.pk/pk/browse/menu.html | grep -o '<li class="secondary-menu-item ">.*</li>' > text.txt
# # cat text.txt | grep -o '<a href="http[^"]*"' > text1.txt
# curl -sL https://www.mcdelivery.com.pk/pk/browse/menu.html | grep -o '<span class="starting-price">.*</span>' | sed 's/<[^>]\+>//g' > text5.txt
# curl -sL https://www.mcdelivery.com.pk/pk/browse/menu.html | grep -o '<h5 class="product-title">.*</h5>' | sed 's/<[^>]\+>//g' > text4.txt
# cat text.txt | sed 's/<[^>]\+>//g' > text2.txt
# curl -sL https://www.mcdelivery.com.pk/pk/browse/menu.html | grep -o '<ul class="secondary-menu">.*</ul>' | sed 's/href=/\nhref=/g' | \
# grep 'href=\"' | \
# sed 's/.*href="//g;s/".*//g' > text1.txt
curl -sL https://www.mcdelivery.com.pk/pk/browse/menu.html | grep -o '<li class="secondary-menu-item ">.*</li>' | sed 's/href=/\nhref=/g' | \
grep 'href=\"' | \
sed 's/.*href="//g;s/".*//g' > text1.txt
sed -i 's/amp;//' text1.txt
