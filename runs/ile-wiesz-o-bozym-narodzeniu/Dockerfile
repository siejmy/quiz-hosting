FROM jedrzejlewandowski/siejmy-quiz-abcd:2.5.2
ADD serviceAccount.json /serviceAccount_jk87MWz.json
ENV GOOGLE_APPLICATION_CREDENTIALS="/serviceAccount_jk87MWz.json"
ENV ROUTE_BASE="ile-wiesz-o-bozym-narodzeniu"
ENV DOMAIN="quiz.siejmy.pl"
COPY . .
