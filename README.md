# Local Developer Environment

A sandbox testing environment designed for API development and testing. This repository provides a controlled local environment to develop, test, and debug APIs 

## Features

- Containers
  * kafka server
  * kafka local ui
  * opensearch-node
  * opensearch-ui
  * postgres database
  * localstack (local AWS services)
  * karate-test-runner
  * bestbuy playground api to experiment against
- Quick start up and tear down of local environmnet
- Example karate test repository setup and sample code

## Prerequisites

- Java 11 or higher
- Docker desktop installed
- github-desktop
- VSCode (free) or Cursor (subscription required for Cursor)
- Maven 3.9.9
  - https://maven.apache.org/download.html
  - `choco install maven` (if chocolatey installed)

## Recommended tools
- Chocolatey (for windows)
- Windows Services for Linux

## Setup

1. Clone the repository:
   * open a terminal window (bash/cmd/powershell)
   * change directory to a location you are going to store your projects
   * enter the following command
   ```
   git clone --recurse-submodules https://github.com/woetohice/local-developer-environment.git  
   ```
   This will create a local-developer-environment folder, and pull down all of the repositories and submodules.
2. open Docker Desktop.  When prompted to log in or create an account, click "Personal" and then Skip.   
3. Open Visual Studio Code
4. Select "Open Folder..."
5. Navigate to the local-developer-environment folder and click "select Folder"
   * you will be prompted to install a series of extension and add ons that are helpful.
6. Open the Terminal menu in VScode and select New Terminal
   * a new pane will appear at the bottom of the window.   click the V next to the plus and select "Git bash"
7. type ```scripts/container-deploy.sh```
   * The first time you run this, it will be downloading a lot of data, and may take up to 10 minutes to complete.
8) switch to your Docker Deskop to verify the containers started
   * expand the local-developer-environment container
   * you should have 9 items inside of it
     * kafka-server
     * opensearch-node
     * postgres-1
     * opensearch-ui
     * application-under-test
     * karate-tests-runner (stopped)
     * dynamodb-ui
     * kafka-ui
     * localstack
   * click on Karate-tests-runner and you should see something along the lines of:
```
2025-05-07 13:28:02 [INFO] Results:
2025-05-07 13:28:02 [INFO] 
2025-05-07 13:28:02 [INFO] Tests run: 2, Failures: 0, Errors: 0, Skipped: 0
2025-05-07 13:28:02 [INFO] 
2025-05-07 13:28:02 [INFO] ------------------------------------------------------------------------
2025-05-07 13:28:02 [INFO] BUILD SUCCESS
2025-05-07 13:28:02 [INFO] ------------------------------------------------------------------------
2025-05-07 13:28:02 [INFO] Total time:  12.824 s
2025-05-07 13:28:02 [INFO] Finished at: 2025-05-07T20:28:02Z
2025-05-07 13:28:02 [INFO] ------------------------------------------------------------------------
```

## Usage

1. Start the development server:
   ```bash
   scripts/container-deploy.sh
   ```

2. Access the playground API endpoints at `http://localhost:3030`

3. Explore tests in karate-tests/src/java/com/woetohice/test/playground

## Contributing

This is intended as a self-contained way to learn, practice, and experiment with patterns for api and back-end systems testing.  All karate based currently, but I intend to add submodules for rest assured and selenium test harnesses as well..

