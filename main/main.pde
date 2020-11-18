import java.util.Scanner;


//MAIN

void setup(){
    
    //VALUES
    
    int BITSIZE = 4;
    
    boolean[][] empty = new boolean[6][BITSIZE];
    boolean[][] numbers = new boolean[6][BITSIZE];
    boolean[] add = new boolean[BITSIZE];
    boolean[] sub = new boolean[BITSIZE];
    boolean[] mul = new boolean[BITSIZE];
    boolean[] div = new boolean[BITSIZE];
    
    startMessage();
    
    
    //START CALC
    numbers = defineValues(empty);
    printAllNumbers(numbers);
    
    add = add(numbers[0], numbers[1]);
    message("a", numbers[0], numbers[1], add);
}
