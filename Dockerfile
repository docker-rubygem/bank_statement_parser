FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.1

RUN gem install bank_statement_parser --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bank_statement_to_yaml.rb"]
CMD ["--help"]
