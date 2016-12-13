cd png
echo '' > ../README.md
printf "# cms-icons\n| Name | Preview | | | |\n| --- | --- | --- | --- | --- |\n" >> ../README.md
for f in *.png;
  do
    echo "| $(sed -e s/^i-_// -e s/.png// <<< "$f") | ![$f](./png/$f) | [EPS](./eps/${f%.png}.eps) | [PNG](./png/$f) | [SVG](./svg/${f%.png}.svg) |" >> ../README.md
  done;
