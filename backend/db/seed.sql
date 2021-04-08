\c textbooks_db

INSERT INTO categories (category, img_url)
VALUES ('Math', 'https://nusciencereview.files.wordpress.com/2014/12/mathbig2.jpg'),
('Biology', 'http://g-teacher.com/wp-content/uploads/2017/08/Biology.jpg'),
('Chemistry', 'https://www.unomaha.edu/college-of-arts-and-sciences/chemistry/_files/images/chemdrawing.jpg'),
('Physics', 'http://buzz2fone.com/wp-content/uploads/physics.jpg'),
('Psychology', 'http://cnu.edu/_assets/img/STOCK/Left_v_right_brain/secondary-md.jpg'),
('Medical', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCluIM9ZZm4-LL49XqzYdXCW32Mg_xuGnH0hX_aDk_8MqbeXDy'),
('Computer science', 'https://cdn-images-1.medium.com/max/1500/1*m2gDBT_nc-iE7R4AM3sHBQ.jpeg');

INSERT INTO products (user_id, title, author, price, rating, img, category_id)
VALUES (null, 'Calculus', 'Richard A. Hunt', 50, 5, 'https://images-na.ssl-images-amazon.com/images/I/51kHGnjzXPL._SX381_BO1,204,203,200_.jpg', 1),
(null, 'Calculus', 'Ron Larson', 40, 5, 'https://images.gr-assets.com/books/1182006633l/1221411.jpg', 1),
(null, 'Linear Algebra', 'Gilbert Strang', 40, 5, 'http://math.mit.edu/~gs/linearalgebra/linearalgebra5_Front.jpg',1 ),
(null, 'Discrete Mathematics', 'Rowan Garnier', 30, 4, 'https://images-na.ssl-images-amazon.com/images/I/51kCh1GwEeL._SX326_BO1,204,203,200_.jpg',1),
(null, 'Differential Equations', 'John Polking',40, 4, 'https://images-na.ssl-images-amazon.com/images/I/51R8-xb-3tL._SX390_BO1,204,203,200_.jpg',1),
(null, 'Multivariable Calculus', 'Ron Larson',50, 4, 'https://images-na.ssl-images-amazon.com/images/I/516y12HDWBL._SX389_BO1,204,203,200_.jpg', 1),
(null, 'Probability and Statistics', 'Morris H. DeGroot', 40, 4, 'https://images-na.ssl-images-amazon.com/images/I/517HnCGznHL._SX391_BO1,204,203,200_.jpg', 1),
(null, 'Molecular Biology of the Cell', 'Bruce Alberts',60, 5, 'https://images-na.ssl-images-amazon.com/images/I/5154dNR4SJL._SX363_BO1,204,203,200_.jpg', 2),
(null, 'Principles of Biochemistry', 'David Nelson',50, 4, 'https://images-na.ssl-images-amazon.com/images/I/51fWLBIMiEL._SX385_BO1,204,203,200_.jpg', 2),
(null, 'Neuroscience', 'David Bear', 20, 5, 'https://images-na.ssl-images-amazon.com/images/I/51JUiv62mEL._AC_UL320_SR248,320_.jpg',  2),
(null, 'Principles of Neural Science', 'Eric R. Kandel',70, 5, 'https://images-na.ssl-images-amazon.com/images/I/510PSzPiYRL._SX360_BO1,204,203,200_.jpg', 2),
(null, 'Organic Chemistry', 'Leroy G. Wade',50, 5, 'https://images-na.ssl-images-amazon.com/images/I/617klK0yvDL._SX389_BO1,204,203,200_.jpg', 3),
(null, 'Physical Chemistry', 'Peter Atkins', 20, 5, 'https://images-na.ssl-images-amazon.com/images/I/519gODRRu5L._SX378_BO1,204,203,200_.jpg', 3),
(null, 'Quantum Chemistry', 'Ira Levine', 20, 5, 'https://images-na.ssl-images-amazon.com/images/I/51Hn7gOF8VL._SX384_BO1,204,203,200_.jpg', 3),
(null, 'Fundamentals of Physics', 'Jearl Walker',50, 5, 'https://images.gr-assets.com/books/1348240123l/585316.jpg', 4),
(null, 'Psychology', 'David Myers',30, 5, 'https://prod-cat-files.macmillan.cloud/MediaResources/Jackets/high_res/9781464140815.jpg', 5),
(null, 'Cognitive Psychology', 'Bridget Robinson-Riegler', 20, 4, 'https://cs.cheggcdn.com/covers2/23660000/23663145_1375643285_Width288.jpg', 5),
(null, 'First Aid for the USMLE Step 1', 'Tao Le',30, 5, 'https://images-na.ssl-images-amazon.com/images/I/51q5wA1RQfL._SX388_BO1,204,203,200_.jpg',6),
(null, 'Elements of Programming Interviews in Python', 'Adnan Aziz', 20, 5, 'https://m.media-amazon.com/images/I/61BTafHPRAL._AC_UY436_FMwebp_QL65_.jpg', 7),
(null, 'Cracking the Coding Interview', 'Gayle Laakman McDowell',20, 5, 'https://images-na.ssl-images-amazon.com/images/I/41J6k0AL6yL._SX348_BO1,204,203,200_.jpg', 7),
(null, 'Introduction to Algorithms', 'Thomas Cormen', 30, 5, 'https://images-na.ssl-images-amazon.com/images/I/51rPLfOvqxL._SX376_BO1,204,203,200_.jpg',  7),
(null, 'Algorithms', 'Robert Sedgewick', 40, 5, 'https://m.media-amazon.com/images/I/41-RWwEls6L._AC_UL640_FMwebp_QL65_.jpg', 7),
(null, 'Algorithm Design Manual', 'Steven Skiena', 30, 5, 'https://m.media-amazon.com/images/I/410c4kk1HKL._AC_UL640_FMwebp_QL65_.jpg', 7),
(null, 'Grokking Algorithms', 'Aditya Bhargava', 20, 5, 'https://m.media-amazon.com/images/I/81RkzIXMFxL._AC_UY436_FMwebp_QL65_.jpg', 7),
(null, 'Eloquent Javascript', 'Marijn Haverbeke', 10, 5, 'https://images-na.ssl-images-amazon.com/images/I/51mvaK65SKL._SX376_BO1,204,203,200_.jpg', 7),
(null, 'Javascript & Jquery', 'Jon Duckett', 10, 5, 'http://01eba9f59936628a9c10-a672e330d72d3d2e689cb64015c1f8c5.r97.cf2.rackcdn.com/javascript-and-jquery-book-cover.png', 7);

