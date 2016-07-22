rename 's/%20/ /g' *
find * -name '*.swift' | xargs sed -i "" 's/alex hawley/micheal kent/g'
grep -rn --color=always 'alex hawley' ./
