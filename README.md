# Web-Automation-with-Robot-Framework

## Technology and Tools used
- Robot Framework 
- Selenium
- SeleniumLibrary
- Python
- PyCharm 

## Prerequisites
Run the following commands from the terminal of the editor 

- Robot Framework

      pip install robotframework
      
- Selenium

      pip install selenium
      
- SeleniumLibrary

      pip install robotframework-seleniumlibrary
      
- Plugin Intellibot @SeleniumLibrary Patched

## Website URL
https://magento.softwaretestingboard.com/

## Scenario of the Project
- Sign in with a random user using faker library
- Login with that user into the system
- Search "Jacket" in search box
- Sort the products by price
- Take screenshot of first three products and save them in a folder named "Screenshot" in the root folder
- Add first three products in the cart by selecting random size and colors of your choosing
- Checkout the products

## How to run the project
- Clone the project
- Replace the screenshots directory path according with your local directory path of the screenshots
- Go to the TestCases directory through command in the terminal of the editor
- Run the following command from the terminal of the editor 

      robot TestRunner.robot 


## Output Screenshot
- Summary Report 

![image](https://user-images.githubusercontent.com/58165269/211493659-08a9dfe2-567e-4aaf-952b-2a6a4fc937ed.png)



- Log Report

![image](https://user-images.githubusercontent.com/58165269/211494005-1d8c3bb9-cca6-4ef7-bef6-ec03de3375e7.png)




