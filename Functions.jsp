//functionality used to calculate tips
function calculateTip(){
    //defining all the required variables and initiating them

    var billamount=document.getElementById("billamount").value;
    var servicerating=document.getElementById("servicerating").value;
    var numofpeople=document.getElementById("people").value;

    //validating the input
    if(billamount==" "||servicerating==0){
        alert("Please fill the values.");
        return;

    }

    //checking whether the number of people is empty or just one
    if(numofpeople==" "||numofpeople<=1){
        numofpeople=1;
        document.getElementById("each").style.display="none";
    }else{
        document.getElementById("each").style.display="block";
    }

    // calculating tips amount
    var total=(billamount*servicerating) / numofpeople;
    //rounding to two decimal places
    total=Math.round(total*100) / 100;

    total=total.toFixed(2); //to always have two digits after decimal point
   // document.write(total);
    document.getElementById("totaltip").style.display="block";

    document.getElementById("tip").innerHTML=total;
}

//hide these elements while loading
document.getElementById("totaltip").style.display="none";
document.getElementById("each").style.display="none";

//on click to call the function
document.getElementById("submit").onclick=function () {
    calculateTip();
}

