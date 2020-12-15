FROM jedrzejlewandowski/siejmy-quiz-abcd:2.3.3
ADD serviceAccount.json /serviceAccount_jk87MWz.json
ENV GOOGLE_APPLICATION_CREDENTIALS="/serviceAccount_jk87MWz.json"
ENV ROUTE_BASE="sanktuaria"
ENV DOMAIN="quiz.siejmy.pl"
COPY . .
