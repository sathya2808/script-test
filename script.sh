git init
a=$(ls)
c=0
for i in $a; do
 echo $i
 git add $i
 c = $((c+1))
 if [[($c > 1)]];then
  git commit -m "$i"
  git branch -M main
  git remote add $i https://github.com/sathya2808/script-test.git
  git push $i main
  c=0
 fi
done
 
