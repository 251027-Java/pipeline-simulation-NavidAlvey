#!/bin/bash

step1(){
    echo "Step 1"
    if [ -f "source_code.txt" ]; then
        echo "Compilation Success"
    else 
        echo "Error"
        exit 1
    fi
}

step2(){
    echo "Step 2"
    test=$((RANDOM % 2))
    if [ "${test}" -eq 0 ]; then
        echo "Tests Failed"
        exit 1
    else
        echo "Tests Passes"
    fi
}

step3(){
    if [ -f "artifact.jar" ]; then
        echo "artifact.jar file has already been made"
    else    
        touch "artifact.jar"
        echo "artifact.jar file has successfully been made"
        exit 1
    fi
}

step4() {
    mkdir "deploy"
    mv "artifact.jar" "deploy"
    echo "artifact.jar file has successfully been moved to the 'deploy' folder"
}

step1
step2
step3
step4
