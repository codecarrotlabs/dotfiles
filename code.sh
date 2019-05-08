#!/bin/bash

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
      break
      ;;
    "VS Code Insiders")
      echo "Opening ${PROJECT_NAME} in VS Code Insiders"
      code-insiders ${PROJECT_PATH}
      break
      ;;
    *)
      echo "Please provide an input for text editor." 
      break
      ;;
  esac
done

cd ${PROJECT_PATH}