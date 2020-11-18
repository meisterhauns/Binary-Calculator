boolean[] add(boolean[] n1, boolean[] n2){
    boolean[] overflow = new boolean[n1.length + 1];
    boolean[] sum = new boolean[n1.length + 1];

    for (boolean i : overflow) {
        i = false;
    }

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

    sum[n1.length] = overflow[n1.length] ? true : false;

    return sum;
}
