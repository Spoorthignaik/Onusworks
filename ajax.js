console.log("ajax tutorial..");

let fetchBtn=document.getElementById('fetchBtn');
fetchBtn.addEventListener('click',buttonClickHandler)

function buttonClickHandler(){
    console.log('you have clicked the fetchBtn')

    //instantiate XHR object
    const xhr = new XMLHttpRequest();

    //OPEN the object
    xhr.open('GET','onus.txt',true);

    //for progress

    xhr.onprogress=function(){
        console.log('on progress');

    }

    xhr.onload=function(){
        console.log(this.responseText)
    }

    xhr.send();
}