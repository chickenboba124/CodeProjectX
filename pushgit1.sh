rename 's/%20/ /g' *
find * | xargs sed -i '' 's/alex hawley/micheal kent/g'
grep -rn --color=always 'alex hawley' ./
