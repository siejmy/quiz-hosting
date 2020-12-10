FROM jedrzejlewandowski/siejmy-quiz-abcd:1.1.0
ADD serviceAccount.json /serviceAccount_jk87MWz.json
ENV GOOGLE_APPLICATION_CREDENTIALS="/serviceAccount_jk87MWz.json"
ENV ROUTE_BASE="sanktuaria"
COPY . .
