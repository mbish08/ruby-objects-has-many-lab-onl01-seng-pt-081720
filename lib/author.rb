class Author 

  attr_accessor :name, :posts, :author

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

 def posts
   Post.all.select do |post|
     post.author ==  self 
   end 
 end 

def add_post(post)
  post.author = self 
end 

def add_post_by_name(name)
    post = post.new(name)
    post.author = self
  end

 def self.post_count
    post.all.count
  end

end