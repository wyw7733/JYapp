$(document).ready(function(){
	if($('input[num_float]').length > 0){
		$('input[num_float]').blur(function(){
	    	a=parseFloat($(this).val());
	        if(isNaN(a) || (a<0 && typeof($(this).attr('small_than_zero'))=='undefined')){
	            $(this).val('');
	        }else{
	            if(typeof($(this).attr('not_zero'))!='undefined' && ($(this).val()==''||$(this).val()==0)){
	                $(this).val('');
	                return false;
	            }
	            if(typeof($(this).attr('int'))!='undefined' ){
	                $(this).val(Math.round(a));
					
	                return false;
	            }
	            $(this).val(a.toFixed(2))
	        }
	    }).bind("keyup",function(){
	        if(this.value==this.value2)return;
	        if(this.value.search(/^\d*(?:\.\d{0,2})?$/)==-1)this.value=(this.value2)?this.value2:'';else this.value2=this.value;
	   })		
	}

	
	
		
})
function isInArray(search,arr){
	var i = arr.length;  
    while (i--) {  
        if (arr[i] === search) {  
            return true;  
        }  
    }  
}
function showTips(text, time) {
    if(arguments.length < 1) {
        alert('请填写提示');
        return;
    }

    var text = text,
        time = time;

    var wrap_div = '<div class="myTips" id="myTips" style="position: fixed;top: 0; left: 0;width: 100%;height: 100%;z-index: 10000;"><div style="position: absolute;padding: 20px;background: rgba(0, 0, 0, 0.7);position: absolute; left:50%; top:50%; -webkit-transform:translate(-50%,-50%); transform:translate(-50%,-50%);font-size: 18px;border-radius: 10px;color:#fff;opacity: 0.9;">'+ text +'</div>';


    if($('.myTips').length > 0) {
        $('.myTips').find('div').text(text);
    } else {
        $("body").append(wrap_div);
    }

    if(time != undefined && time) {
        $("#myTips").show();
        setTimeout(function() {
            $("#myTips").hide();
        }, time);
    }

}
/*延迟跳转*/
function delay(url){
	window.location.href=url;
}