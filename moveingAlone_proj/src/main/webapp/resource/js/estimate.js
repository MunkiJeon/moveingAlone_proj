/**
 * 
 */
 $(function(){
    $(".productList").click(function(e){
		e.preventDefault();
        if($(e.target).hasClass("productBtnM")){
            $(this).find(".productBtn").find("p").html($(this).find(".productBtn").find("p").html()*1-1);
            if($(this).find(".productBtn").find("p").html()*1==0){
                $(this).find(".productBtn").hide();
            }
        }else{
            $(this).find(".productBtn").show();
            console.log();
            $(this).find(".productBtn").find("p").html($(this).find(".productBtn").find("p").html()*1+1);
            console.log(e.target);
        }
    })
    
    $(".product .productCount .cntM").click(function(e){
		e.preventDefault();
        if(  $(".product .productCount .cnt").html()*1==0  )return;
        $(".product .productCount .cnt").html($(".product .productCount .cnt").html()*1-1);
    })
    $(".product .productCount .cntP").click(function(e){
		e.preventDefault();
        $(".product .productCount .cnt").html($(".product .productCount .cnt").html()*1+1);
    })
    $(".product .test").click(function(e){
		
		let item1 =[9],item2,item3,box;
		e.preventDefault();
		 for(let i =0;i<$(".product .productItem .item1").length;i++){
	        console.log($(".product .productItem .item1")[i]);	
		}
/*     $(".product .productItem .item2").
      $(".product .productItem .item3").
      $(".product .productGim .cnt")*/
    })
    
    
})