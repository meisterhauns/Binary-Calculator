void startMessage() {
    println("______________________");
    println("|                    |");
    println("|    Variable Bit    |");
    println("|       Binary       |");
    println("|     Calculator     |");
    println("|____________________|\n\n\n");
}

void printAllNumbers(boolean[][] n){
    for (int i = 0; i < n.length; i++){
        StringBuilder s = new StringBuilder("");
        for (int j = 0; j < n[i].length; j++){
            s.append(bool2Int(n[i][n[i].length -1 -j]));
        }
        print("Nr. " + (i+1) + ": ");
        System.out.printf(" %s ", s.toString());
        System.out.printf(" (decimal: %" + (ceil(n[i].length/3)+1) + "d )\n", binary2Dec(n[i]));
    }
    print("\n\n");
}

void message(String type, boolean[] n1, boolean[] n2, boolean[] solved){

    if (type == "a" || type == "A"){
        println("Addition:\n");
        System.out.printf("     "  + returnSingleNumber(n1) + "  (decimal: %" + (ceil(n1.length/3)+1) + "d )\n", binary2Dec(n1));
        System.out.printf(" +   "  + returnSingleNumber(n2) + "  (decimal: %" + (ceil(n1.length/3)+1) + "d )\n", binary2Dec(n2));
        System.out.printf("    "  + returnSingleNumber(solved) + "  (decimal: %" + (ceil(n1.length/3)+1) + "d )\n", binary2Dec(solved));
    }
}
