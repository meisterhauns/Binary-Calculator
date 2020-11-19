void setup(){
    
    int BITSIZE = 16;
    
    boolean[][] numbers = new boolean[6][BITSIZE];
    boolean[] add = new boolean[BITSIZE];
    boolean[] sub = new boolean[BITSIZE];
    boolean[] mul = new boolean[BITSIZE];
    boolean[] div = new boolean[BITSIZE];
    
    startMessage();
    
    numbers = fillRandomValues(numbers);
    
    printAllNumbers(numbers);
    
    /*
     * Calculate the sum and then send a message of type "sum".
     */
    add = add(numbers[0], numbers[1]);
    message("a", numbers[0], numbers[1], add);
}
