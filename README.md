# DevOps Test Task

This repository contains a Bash script and a GitHub Actions workflow for the Serhii K's TS test task.

[![Build](https://github.com/kuriosity0629/devops-test-task-Serhii-Kior/actions/workflows/run-script.yml/badge.svg)](https://github.com/kuriosity0629/devops-test-task-Serhii-Kior/actions/workflows/run-script.yml)

## Running the Script Locally
  1. Clone the repository:
     ```bash
     git clone git@github.com:kuriosity0629/devops-test-task-Serhii-Kior.git
     cd devops-test-task-Serhii-Kior

  2. Ensure the script is executable:
     ```bash
     chmod +x scripts/hello.sh
  3. Run the script with default logfile name
     ```bash
     ./scripts/hello.sh
     ```

       Or with custom logfile name
     ```bash
       ./scripts/hello.sh custom-log
# Triggering the GitHub Actions Workflow Manually

  1. Go to the "Actions" tab in the repository.
  2. Select the "Build" workflow.
  3. Click "Run workflow" and optionally provide a custom log filename.
