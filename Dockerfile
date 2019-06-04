FROM node
RUN npm install -y express --save
RUN npm install body-parser --save
copy data.json /node/data.json
copy node.js /node/node.js
RUN chmod +x /node/node.js
expose 9000
CMD node /node/node.js
