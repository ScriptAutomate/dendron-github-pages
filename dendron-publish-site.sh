./dendron-prereqs.sh
npx dendron publish init && cp .node-version .next/ && cd .next
npm install && cd ..
npx dendron publish build && cd .next
npm install && npx next build && npx next export && cd ..
mv .next/out docs
#cat _includes/subscribe.html >> docs/nav.html
