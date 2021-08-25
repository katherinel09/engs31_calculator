# ENGS 31 (21X) Final Project: Serial-Based ASM (Add-Subtract-Multiply) Calculator

## Katherine Lasonde and Wendell Wu

## Link to Final Report (Update Final Once Completed)

Can be found [here.](https://docs.google.com/document/d/1ZsiujrolXO6kkj2-end8q93mCXqGD-XFut6Zs9Opm08/edit?usp=sharing)

### How to Program

Steps:

1. Open the `vivado_proj_asm_calc.xpr` project in Vivado (preferably v2018.4 or
above).
2. Run "Generate Bitstream" with asm_calc_shell.vhd set as the top level entity
and program the Basys3/Artix7 FPGA with the bitstream.
3. Open Device Manager (or another program) to determine the connection which
the FPGA is on.
4. Open PuTTY or another serial communication program and connect to the FPGA's
USB interface with the specified baud rate (currently set at 115200 baud).

### Modes of Operation

Now, you should be able to start entering characters. Enter individual digits
when entering numbers, hit operations (`+`, `-`, or `*`) to progress to entering
the next number, and press `=` when finished with entering the second number to
compute and display the result. If the result is less than 2 digits (between
-9 and +99), then you may "chain" operations if you
hit another operation and enter another number, such
that the result of the previous operation is now the first argument of the
second operation. Press `=` again to see the result of the second operation.
If the result of an operation is more than 2 digits long (treating the negative
sign `-` as a digit, if it exists) and the user attempts to "chain" the
result in a following operation, the calculator will _overflow_, resulting in
"FFFF" being displayed on the seven-segment display.

#### Entering Numbers

Numbers are entered in one digit at a time, starting with the MSB and ending
with the LSB. If a negative number is desired, the negative sign must be the
first character hit when entering a number. Otherwise, it will be interpreted
as a subtraction operation if entered after a number.

In our current implementation, inputs are limited to two decimal digits, with
a negative sign taking the place of a digit if one was pressed. If the user
enters more than two digits for a single number, the MSB is shifted left and
"lost", while the original LSB becomes the MSB and the newly entered number
becomes the LSB.
