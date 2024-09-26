# Robot Framework Automation Project

This repository contains test automation scripts using **Robot Framework** for web testing.

## Table of Contents
- [Overview](#overview)
- [Setup](#setup)
- [Running Tests](#running-tests)
- [Running Tests on Windows](#running-tests-on-windows)
- [Project Structure](#project-structure)
- [Results](#results)

## Overview

This project automates:
- Web testing using **SeleniumLibrary**

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/Manikanta18/Robot-Framework.git
   cd Robot-Framework
   ```

2. Create a virtual environment (optional):
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Running Tests

1. Run all tests:
   ```bash
   robot Tests/
   ```

2. Run tests in a specific browser (e.g., Chrome):
   ```bash
   robot --variable BROWSER:chrome Tests/
   ```

## Running Tests on Windows

If you're on Windows, you can use the batch file:

1. Run the batch file:
   ```bash
   run_tests.bat
   ```

This will run all tests and generate reports.

## Project Structure

```text
Robot-Framework/
├── Tests/                # Contains test cases
│   ├── BackOffice/       # Test cases for back office
│   │   └── Back_Office.robot
│   ├── EndToEnd/         # End-to-end test cases
│   │   └── End_to_End.robot
│   ├── FrontOffice/      # Test cases for front office
│       └── Front_Office.robot
├── Resources/            # Reusable keywords, variables, and page objects
│   ├── BackOffice/       # Page Object (PO) folder for back office
│   │   └── PO/          
│   ├── Common/           # Resusable common keywords
│   │   └── CommonWeb.robot
│   ├── FrontOffice/      # Page Object (PO) folder for front office
│       └── PO/          
├── Results/              # Generated HTML reports and Log files for test execution
├── Data/                 
    └── InputData.robot   # Contains Global variables
├── run_tests.bat         # Windows batch file for running tests
├── requirements.txt      # Python dependencies
└── README.md             # Project documentation (this file)

```

## Results

After running tests, each test run generates a new folder in the `Results/` directory, named as `results_timestamp` (e.g., `results_8-07-0-0_123851`). Inside, you will find:
- **log.html**: Detailed logs of the test execution.
- **output.xml**: Robot Framework output file.
- **report.html**: Summary of the test run.
