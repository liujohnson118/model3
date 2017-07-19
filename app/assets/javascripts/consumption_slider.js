var rangeSlider=document.getElementById('consumption_range');
var rangeBox=document.getElementById('consumption_kWh_enter');

if(rangeSlider){
  rangeSlider.addEventListener('change',function(){
    document.getElementById('consumption_kWh').innerHTML=rangeSlider.value+' kWh/100km';
  })
}

if(rangeBox){
  let maxChar=5;
  rangeBox.addEventListener('keyup',function(event){
    let val=rangeBox.value;
    if (val.length>=maxChar){
      rangeBox.value=val.substring(0,maxChar);
    }
    let val_numeric=Number(val);
    if(val_numeric>=10 && val_numeric<=100){
      rangeSlider.value=val_numeric;
      document.getElementById('consumption_kWh').innerHTML=val_numeric+' kWh/100km';
    }
  })
}