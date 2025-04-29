# Local Developer Environment

A sandbox testing environment designed for API development and testing. This repository provides a controlled local environment to develop, test, and debug APIs 

## Features

- dockerized playground api submodule with swagger
- dockerized Karate 1.4.0 framework with prerequisites and example code
- Easy setup and configuration
- dockerized Postgres db server 

## Prerequisites

- Java 11 or higher
- Docker desktop installed
- vscode or cursor recommended

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/woetohice/local-developer-environment.git
   cd local-developer-environment
   ./scripts/container-deploy.sh
   ```

2. Install dependencies
  ```bash
  

3. Configure your environment:
   - Copy `.env.example` to `.env`
   - Update the environment variables as needed

## Usage

1. Start the development server:
   ```bash
   scripts/container-deploy.sh
   ```

2. Access the playground API endpoints at `http://localhost:3030`

3. Explore tests in karate-tests/src/java/com/woetohice/test/playground

## Contributing

This is intended as a self-contained way to learn, practice, and experiment with patterns for api and back-end systems testing.  All karate based currently, but I intend to add submodules for rest assured and selenium test harnesses as well..

