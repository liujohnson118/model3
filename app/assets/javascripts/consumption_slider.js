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
    if(isNaN(val_numeric)){
      document.getElementById('submitConsumption').style.display='none';
    }else{
      console.log('should display buttohn');
      document.getElementById('submitConsumption').style.display='';
    }
    if(val_numeric<5){
      document.getElementById('submitConsumption').style.display='';
      document.getElementById('consumption_kWh').innerHTML=' 5 kWh/100km';
      rangeSlider.value=5;
    }else if(val_numeric>35){
      document.getElementById('submitConsumption').style.display='';
      document.getElementById('consumption_kWh').innerHTML=' 35 kWh/100km';
      rangeSlider.value=35;
    }else{
      if(isNaN(val_numeric)){
        document.getElementById('submitConsumption').style.display='none';
        rangeSlider.value=20;
        document.getElementById('consumption_kWh').innerHTML='Invalid consumption';
      }else{
        rangeSlider.value=val_numeric;
        document.getElementById('submitConsumption').style.display='';
        document.getElementById('consumption_kWh').innerHTML=val_numeric+' kWh/100km';
      }
    }

  })
}