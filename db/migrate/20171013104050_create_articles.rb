class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :user_id    #用户id
      t.string :company_name  #公司名            
      t.string :category   #文章分类板块
      t.string :title     #标题
      t.string :subhead #副标越
      t.text :details  #内容
	  t.string :type     #文章类型
	  t.string :highlight  #文章高亮
	  t.string :author  #作者 
	  t.string :inputer #录入者
	  t.string :source #来源
	  t.string :img_address  #图片地址
	  t.string :files_path   # 文件地址
	  t.string :excerpt #摘要
	  t.string :hits #点击量
	  t.string :digest, default:"off" #置顶
	  t.string :keyword #关键字
	  t.date :modified #修改时间
	  t.date :created #添加时间
      t.timestamps null: false
    end
  end
end
