/**
 * Calculates the sum of two numbers in binary system
 * @param n1 the first binary number
 * @param n2 the second binary number
 * @retuen the sum of the two binary numbers
 */

boolean[] add(boolean[] n1, boolean[] n2){

    /*
     * We need an overflow array that can carry numbers over to the next calculation. 
     * This needs to be one bit longer than our inputs because the biggest values could also produce overflows.
     */
    boolean[] overflow = new boolean[n1.length + 1];
    boolean[] sum = new boolean[n1.length + 1];

    /*
     * Setting the overflow number to all zeros.
     */
    for (boolean i : overflow) {
        i = false;
    }

    /*
     * For every digit in the binary number we calculate the sum.
     * And if it produces an overflow we set the next bit in the ovwerflow array to 1.
     */
    for (int i = 0; i < n1.length; ++i) {
        if (overflow[i]){
            if (n1[i] && n2[i]){
                sum[i] = true;
                overflow[i+1] = true;
            } else if ((n1[i] && !n2[i]) || (!n1[i] && n2[i])) {
                sum[i] = false;
                overflow[i+1] = true;
            } else if (!n1[i] && !n2[i]) {
                sum[i] = true;
            }
        } else if (!overflow[i]) {
            if (n1[i] && n2[i]){
                sum[i] = false;
                overflow[i+1] = true;
            } else if ((n1[i] && !n2[i]) || (!n1[i] && n2[i])) {
                sum[i] = true;
            } else if (!n1[i] && !n2[i]) {
                sum[i] = false;
            }            
        }
    }

    /*
     * If the biggest overflow bit is set to true then set the biggest sum bit to true.
     */
    sum[n1.length] = overflow[n1.length] ? true : false;

    return sum;
}
