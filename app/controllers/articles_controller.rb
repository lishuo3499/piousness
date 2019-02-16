class ArticlesController < ApplicationController
    before_action :must_login ,only: [:newart]

    def index
      @article=Article.all
     @article_new=Article.where(category: "头条新闻").limit(4).order('id desc')
     @article_qbz=Article.where(category: "养老情报站").limit(1).order('id desc')
     @article_dhyly=Article.where(category: "对话养老院").limit(1).order('id desc')
     @article_zyzfw=Article.where(category: "志愿者服务大厅").limit(2).order('id desc')
     @article_shop=Article.where(category: "绘益养老商城").limit(4).order('id desc')
     @article_article=Article.where(category: "志愿者活动").limit(3).order('id desc')
     @article_show=Article.where(category: "作品展示").limit(3).order('id desc')
     @article_zml=Article.where(category: "绘益志愿者招募令").limit(3).order('id desc')

    end






    def blog_list

    
    @type=params[:type]

    if @type == "头条新闻"
       @blog_list=Article.where(category: "头条新闻").limit(100).order('id desc')
    elsif @type == "养老情报站"
       @blog_list=Article.where(category: "养老情报站").limit(100).order('id desc')
    elsif @type == "对话养老院"
       @blog_list=Article.where(category: "对话养老院").limit(100).order('id desc')
    elsif @type == "志愿者服务大厅"
       @blog_list=Article.where(category: "志愿者服务大厅").limit(100).order('id desc')
    elsif @type == "绘益养老商城"
       @blog_list=Article.where(category: "绘益养老商城").limit(100).order('id desc')
    elsif @type == "志愿者活动"
       @blog_list=Article.where(category: "志愿者活动").limit(100).order('id desc')
    elsif @type == "作品展示"
       @blog_list=Article.where(category: "作品展示").limit(100).order('id desc')
    elsif @type == "绘益志愿者招募令"
       @blog_list=Article.where(category: "绘益志愿者招募令").limit(100).order('id desc')               
    end
     
    end







    def blog
       @articles_id=params[:id].to_i
       @article_blog=Article.find(@articles_id)
    end

    def bussiness
      
    end


   def newart
   	
   end

   def createart
    # p "aaaaaaaaaaaaaaaaaaa"
    p @up_file = params[:localfile]
    myfile = MyuploaderUploader.new
    myfile.store!(@up_file)
    


    	p @category=Article.new(params.require(:article).permit(:category))


      @article=Article.new
   	  @article.title = params[:title]
   	  @article.subhead =    params[:subhead]
   	  @article.category  =    @category['category']
   	  @article.author  =    params[:author]
   	  @article.source  =    params[:source]
   	  @article.created =    params[:created]
   	  @article.digest  =    params[:digest]
   	  @article.details =    params[:details]
      @article.img_address =    "#{$time}#{$a}"
      @article.save 


   	 redirect_to articles_newart_path
   end

end
