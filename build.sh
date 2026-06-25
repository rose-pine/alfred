OUT_DIR="./dist"

npx @rose-pine/build@latest  \
    --template template.json \
    --format hex             \
    --output "$OUT_DIR"

cd "$OUT_DIR" || exit

for file in *.json; do
    newname="${file%.json}.alfredappearance"
    mv "$file" "$newname"
done
