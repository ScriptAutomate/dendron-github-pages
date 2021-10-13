rm -rf .next
rm -rf node_modules
rm package.json
rm package-lock.json
./dendron-prereqs.sh
npx dendron publish init && cp .node-version .next/ && cd .next
npm install && cd ..
npx dendron publish build && cd .next
npm install && npx next dev
