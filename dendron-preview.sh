rm -rf .next
npx dendron publish init && cp .node-version .next/ && cd .next
npm install && cd ..
npx dendron publish build && cd .next
npm install && npx next dev
