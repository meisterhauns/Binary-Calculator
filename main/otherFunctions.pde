/*
 * Creates a random binary number by filling the boolean array randomly with true or false.
 */
boolean[][] fillRandomValues(boolean[][] n){
    for(int i = 0; i < n.length; i++){
        for (int j = 0; j < n[i].length; j++){
            n[i][j] = int2Bool(round(random(0,1)));
        }
    }
    return n;
}

/*
 * Returns a decimal number from a binary number as a String
 * @param n the binary input
 * @return the decimal number as a string
 */
String returnSingleNumber(boolean[] n){
    /*
     * We need a StringBuilder because the binary numbers start with the lowest number.
     * Appending a new value to the binary number is much easier this way.
     * But this means for printing out we need to invert the binary number to have the biggest value on the left, not on the right.
     */
    StringBuilder s = new StringBuilder("");
    for (boolean a : n){
        s.insert(0, bool2Int(a));
    }
    return s.toString();
}
