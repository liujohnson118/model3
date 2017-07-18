var comment_area=document.getElementById('review_comment');
var counter = document.getElementById('counter');

if(comment_area && counter){
  let max_char=140;
  comment_area.addEventListener('keyup', function(event){
    console.log('event ',event);
    let comment=comment_area.value;
    if (comment.length>=max_char){
      comment_area.value=comment.substring(0,max_char);
    }
    let remainingChar=max_char-comment.length;
    if(remainingChar<0){
      counter.innerHTML=0;
    }else{
       counter.innerHTML=(max_char-comment.length);
    }
  })
}


