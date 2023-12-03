FROM golang:1.18.10

ARG GITHUB_TOKEN

ENV GITHUB_TOKEN=$GITHUB_TOKEN

WORKDIR /app

COPY . /app

RUN go mod tidy

RUN go build -v ./

CMD ["./org-stats", "--org", "quero-edu", "--since", "1y", "--blacklist", "user:renovate[bot],user:dependabot[bot],user:github-actions[bot],repo:quero_bolsa", "--top", "3", "--include-reviews"]