String returnSingleNumber(boolean[] n){
    StringBuilder s = new StringBuilder("");
    for (boolean a : n){
        s.insert(0, bool2Int(a));
    }
    return s.toString();
}
