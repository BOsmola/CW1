#!/bin/bash
# This script is to test java file Dec2Hex.java

javac Dec2Hex.java

# Here we are testing for no input
echo "Testing for: ' '"

java Dec2Hex

if [ "$(java Dec2Hex)" = "Error : Enter Integer Value" ]
then
        echo "Test Pass"

        # Here we are testing for string input
        echo "Testing for: 'one'"

        java Dec2Hex one

        if [ "$(java Dec2Hex one)" = "Error : Enter Integer Value" ]
        then
                echo "Test Pass"

                # Here we are testing for decimal input
                echo "Testing for: '15.2'"

                java Dec2Hex 15.2

                if [ "$(java Dec2Hex 15.2)" = "Error : Enter Integer Value" ]
                then
                        echo "Test Pass"

                        # Here we are testing for integer input
                        echo "Testing for: '15'"

                        java Dec2Hex 15

                        if [ "$(java Dec2Hex 15)" = "Hexadecimal representation of 15 is F" ]
                        then
                                echo "Test Pass"
                                echo "All Tests Successful"
                        else
                                echo "Test Fail"
                        fi

                else
                        echo "Test Fail"
                fi

        else
                echo "Test Fail"
        fi

else
        echo "Test Fail"
fi

