p1 = Post.create(title: "Test Post 1", content: "This is test seed post 1", author: "Author 1");

p2 = Post.create(title: "Test Post 2", content: "This is test seed post 2", author: "Author 2");

p3 = Post.create(title: "Test Post 3", content: "This is test seed post 3", author: "Author 3");

t1 = Tag.create(name: 'Homework')
t2 = Tag.create(name: 'test 1')
t3 = Tag.create(name: 'test 2')
t4 = Tag.create(name: 'test 3')
t5 = Tag.create(name: 'Galvanize')

p1.tags << t1
p1.tags << t2
p1.tags << t5

p2.tags << t1
p2.tags << t3
p2.tags << t5

p3.tags << t1
p3.tags << t4
p3.tags << t5