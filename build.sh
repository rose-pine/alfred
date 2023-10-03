npx @rose-pine/build@latest  \
    --template template.json \
    --format hex             \
    --output ./dist

cd dist

for file in *.json; do
    newname="${file%.json}.alfredappearance"
    mv "$file" "$newname"
done