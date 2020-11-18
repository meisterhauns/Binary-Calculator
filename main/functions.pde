boolean[] add2Numbers( boolean[] n1, boolean[] n2){
    println("Adding numbers:\n    " + returnSingleNumber(n1) + "\n +  " + returnSingleNumber(n2));
    
    return n1;
}

boolean[][] defineValues(boolean[][] n){
    for(int i = 0; i < n.length; i++){
        for (int j = 0; j < n[i].length; j++){
            int c = round(random(0,1));
            n[i][j] = int2Bool(c);
        }
    }
    return n;
}
