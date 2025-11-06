# Instablog

[![Created Badge](https://badges.pufler.dev/created/binos30/instablog)](https://badges.pufler.dev)
[![Updated Badge](https://badges.pufler.dev/updated/binos30/instablog)](https://badges.pufler.dev)
[![CI/CD](https://github.com/binos30/shopline/actions/workflows/ci-cd.yml/badge.svg)](https://github.com/binos30/instablog/actions/workflows/ci.yml)

## Setup

Prerequisites

- [Ruby 3.4.7](https://github.com/rbenv/rbenv)
- [PostgreSQL](https://www.postgresql.org/download/)

Create `.env` file at the root of the project directory. Copy the content of `.env.example` to `.env` then update the `username` and `password` based on your database credentials.

Install dependencies and setup database

```bash
bin/setup
```

Start local web server

```bash
bin/dev
```

Go to [http://localhost:3000](http://localhost:3000)
