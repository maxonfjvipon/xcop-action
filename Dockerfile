FROM ruby:2.6

LABEL "repository"="https://github.com/g4s8/xcop-action"
LABEL "maintainer"="Kirill Che."

RUN gem install xcop

WORKDIR /w
COPY ./entry.sh entry.sh

ENTRYPOINT ["/w/entry.sh"]
