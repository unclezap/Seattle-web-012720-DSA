// jeb's solution

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
        i++;
    }

    while (j < str2.length) {
        let y = parseInt(str2[j],36);
        if (str2[j] === str2[j].toUpperCase()) {y = y * 37};
        sum2 = sum2 + y;
        prod2 = prod2 * y;
        j++;
    }

    if ((sum1 === sum2) && (prod1 === prod2)) {return true}
    else {return false} 
}

function hashPermutation(string1, string2) {
    var hash1 = {};
    var hash2 = {};
    var i = 0;
    var j = 0;
    var str1 = string1;
    var str2 = string2;

    if (str1.length === str2.length){

        while (i < str1.length){
            hash1[`${str1[i]}`] = (hash1[`${str1[i]}`]+1)|| 1;      
            i++;
        }

        while (j < str2.length) {
            hash2[`${str2[j]}`] = (hash2[`${str2[j]}`]-1)|| -1;
            j++;
        }
        
        k = 0
        while (k < hash1.length)
            if ((hash2.hasOwnProperty(`${str1[k]}`)) && (hash1[`${str1[k]}`] === hash2[`${str1[k]}`])) {k++}
            else
            {return false};
        return true       
    }
    else
    {return false}

}
