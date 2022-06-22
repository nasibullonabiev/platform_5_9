import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey.shade800,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.grey.shade800,))
        ],
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text("facebook",style: TextStyle(
          color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold
        ),),
      ),
      body: ListView(

        // post create
        children: [
        Container(
          height: 120,
          color: Colors.black,
          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
          child: Column(
            children: [
              Expanded(child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("assets/images/user_5.jpeg"))
                    ),
                  ),
                 const SizedBox(width: 10,),
                  Expanded(
                      child: Container(
                        height: 46,
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade500
                          )
                        ),
                       child:  TextField(
                         decoration: InputDecoration(
                           hintText: "What's on your mind?",
                           border: InputBorder.none,
                           hintStyle: TextStyle(color: Colors.grey.shade700)
                         ),
                       ),
                      )
                  )
                ],
              )),
              Expanded(child: Row(

                children: [
                  Expanded(child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.video_call,color: Colors.red,),
                      SizedBox(width: 5,),
                      Text("Live")
                    ],
                  )),
                  Container(
                    width: 1,
                    color: Colors.grey.shade400,
                    margin: const EdgeInsets.only(top: 14,bottom: 14),
                  ),
                  Expanded(child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.photo,color: Colors.green,),
                      SizedBox(width: 5,),
                      Text("Photo")
                    ],
                  )),
                  Container(
                    width: 1,
                    color: Colors.grey.shade400,
                    margin: const EdgeInsets.only(top: 14,bottom: 14),
                  ),
                  Expanded(child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.location_on,color: Colors.red,),
                      SizedBox(width: 5,),
                      Text("Check in")
                    ],
                  )),


                ],

              ))
            ],
          ),
        ),

          // post stories
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            height: 200,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10,),
               makeStory(
                 storyImage : "assets/images/story_1.jpeg",
                 userImage : "assets/images/user_1.jpeg",
                 userName : "User One",

               ),
                makeStory(
                  storyImage : "assets/images/story_2.jpeg",
                  userImage : "assets/images/user_2.jpeg",
                  userName : "User Two",

                ),
                makeStory(
                  storyImage : "assets/images/story_3.jpeg",
                  userImage : "assets/images/user_3.jpeg",
                  userName : "User Three",

                ),
                makeStory(
                  storyImage : "assets/images/story_4.jpeg",
                  userImage : "assets/images/user_4.jpeg",
                  userName : "User Four",

                ),
                makeStory(
                  storyImage : "assets/images/story_5.jpeg",
                  userImage : "assets/images/user_5.jpeg",
                  userName : "User Five",

                ),
              ],
            ),

          ),

          // post feed
          makeFeed(
            userName : "User Two",
            userImage : "assets/images/user_2.jpeg",
            feedTime : "1 hr ago",
            feedText :  "All the Lorem Ipsum on the Internet",
            feedImage : "assets/images/story_2.jpeg"
          )
        ],
      )

    );
  }

  Widget makeStory({storyImage,userImage,userName}){
    return AspectRatio(aspectRatio: 1.3/2,
    child: Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
           image: AssetImage(storyImage),
          fit: BoxFit.cover,
        )
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1),
            ]
          )
        ),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue,
                width: 2
                ),
                image: DecorationImage(
                  image: AssetImage(userImage),
                  fit: BoxFit.cover
                )
              ),
            ),
            Text(userName,style: const TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),
    ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                            const SizedBox(height: 3,),
                            Text(feedTime, style: const TextStyle(fontSize: 15, color: Colors.grey),),
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],),
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, letterSpacing: .7),),
                const SizedBox(height: 20,),
              ],
            ),
          ),

          Container(
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(feedImage),
                    fit: BoxFit.cover
                )
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    makeLike(),
                    Transform.translate(
                        offset: const Offset(-5, 0),
                        child: makeLove()
                    ),
                    const SizedBox(width: 5,),
                    Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                  ],
                ),
                Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLikeButton({isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
            const SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}
