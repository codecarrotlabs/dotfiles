#!/bin/bash

# What it does?
#
# Open your project in preferred text editor and cd into project's directory

read -p "Enter project name: " PROJECT_NAME
read -p "Enter project's path: " PROJECT_PATH
echo "Select your editor: "


# Open project in VS Code and Run the development server
options=("VS Code" "VS Code Insiders")
select PROJECT_EDITOR in "${options[@]}"
do
  case $PROJECT_EDITOR in
    "VS Code")
      echo "Opening ${PROJECT_NAME} in VS Code"
      code ${PROJECT_PATH}
      cd ${PROJECT_PATH}
      exec bash
      break
      ;;
    "VS Code Insiders")
      echo "Opening ${PROJECT_NAME} in VS Code Insiders"
      code-insiders ${PROJECT_PATH}
      cd ${PROJECT_PATH}
      exec bash
      break
      ;;
    *)
      echo "Please provide an input for text editor." 
      break
      ;;
  esac
done
