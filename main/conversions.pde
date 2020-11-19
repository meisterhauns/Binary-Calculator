/**
 * converts from boolean to int
 * @param b the boolean to be converted
 * @return the returned integer
 */
int bool2Int(boolean b){
    if (b){
        return 1;
    }
    return 0;
}

/**
 * converts from int to boolean
 * @param i the integer to be converted
 * @return the returned boolean
 */
boolean int2Bool(int i){
    if (i == 1){
        return true;
    }
    return false;
}

/**
 * converts from binary to decimal
 * @param n the binary number (as a boolean array)
 * @return the returned deciamal number (as an integer)
 */
int binary2Dec(boolean[] n){
    int decimal = 0;
    for (int i = 0; i < n.length; i++){
        int tmp = 0;
        tmp = n[i] ? (int)pow(2, i) : 0;
        decimal += tmp;
    }
    return decimal;
}
