// jeb's solution
//assigns each letter a value and sees if the string's sums and products match.  Matched sum + product ensures a permutation match
//clarion's hash function would probably be faster but don't remember how to do hashes in js yet and hashes are icky

function checkPermutation(string1, string2) { 
    var sum1 = 0;
    var sum2 = 0;
    var prod1 = 1;
    var prod2 = 1;
    var i = 0;
    var j = 0;
    var str1 = string1
    var str2 = string2

    while (i < str1.length) {
        let x = parseInt(str1[i],36);
        if (str1[i] === str1[i].toUpperCase()) { x = x * 37};
        sum1 = sum1 + x;
        prod1 = prod1 * x;
        console.log (`step${i}: sum1 ${sum1} prod1 ${prod1}`)
        i++;
    }

    while (j < str2.length) {
        let y = parseInt(str2[j],36);
        if (str2[j] === str2[j].toUpperCase()) {y = y * 37};
        sum2 = sum2 + y;
        prod2 = prod2 * y;
        console.log (`2 step${i}: sum2 ${sum2} prod2 ${prod2}`)
        j++;
    }

    if ((sum1 === sum2) && (prod1 === prod2)) {return true}
    else {return false} 
}
