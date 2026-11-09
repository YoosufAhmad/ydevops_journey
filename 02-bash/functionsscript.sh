#!/bin/bash

print_args() {
    echo "Number of arguments: $#"
    echo "Script name: $0"
    echo "First argument: $1"
    echo "Second argument: $2"
    echo "All arguments: $@"
}

print_args "Ahmad" "Bob"

#userinput function

greet_user() {
    echo "What is your name?"
    read name
    echo "Hello, $name!"
}

greet_user

greet() {
    local name

    if [ $# -eq 0 ]; then
        echo "What is your name?"
        read name
    else
        name=$1
    fi  
    
    echo "Hello, $name!"
}

greet

validate_age() {
    local age=$1

    if [[ ! $age =~ ^[0-9]+$ ]]; then
        echo "Invalid age. Please provide a number."
        return 1
    fi

    if (( age < 18 )); then
        echo "Sorry, you must be at least 18 years old."
        return 1
    fi

    echo "Congratulations! You are eligible."
    return 0
}

echo "Please enter your age:"
read user_age
validate_age "$user_age"
exit_code=$?

if (( exit_code != 0 )); then
    echo "Input validation failed."
else
    echo "Validation passed!."
fi