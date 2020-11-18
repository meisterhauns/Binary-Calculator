int bool2Int(boolean b){
    if (b){
        return 1;
    }
    return 0;
}

boolean int2Bool(int i){
    if (i == 1){
        return true;
    }
    return false;
}

int binary2Dec(boolean[] n){
    int decimal = 0;
    for (int i = 0; i < n.length; i++){
        int tmp = 0;
        if (n[i] == true){
            tmp = (int)pow(2, i);
        }
        decimal += tmp;
    }
    return decimal;
}
