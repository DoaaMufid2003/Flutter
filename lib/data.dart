import 'postModel.dart';

List<PostModel> postsModel =
mapData.map((e) => PostModel.fromMap(e)).toList();

List<Map> mapData = [
  {
    "name": "Post 1",
    "image": "https://plus.unsplash.com/premium_photo-1675511339247-885c95bb01d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cG9zdHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60",
    "content": "Content of post 1",
    "isFavorite": true,
    "user": {"name": "Doaa Mufid", "image": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"}
  },
  {
    "name": "Post 2",
    "image": "https://plus.unsplash.com/premium_photo-1675511339058-a6c62fbd69dc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cG9zdHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60",
    "content": "Content of post 2",
    "isFavorite": false,
    "user": {"name": "Samah yosef", "image": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"}
  },
  {
    "name": "Post 3",
    "image": "https://images.unsplash.com/photo-1516381093400-a0fecb601de2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    "content": "Content of post 3",
    "isFavorite": true,
    "user": {"name": "Fatima", "image": "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=700&q=60"}
  },
  {
    "name": "Post 4",
    "image": "https://plus.unsplash.com/premium_photo-1675511339058-a6c62fbd69dc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cG9zdHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60",
    "content": "Content of post 4",
    "isFavorite": false,
    "user": {"name": "Baraa Mufid", "image": "https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=700&q=60"}
  },
  {
    "name": "Post 5",
    "image": "https://images.unsplash.com/photo-1513673836403-6502cfb1974e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cG9zdHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60",
    "content": "Content of post 5",
    "isFavorite": true,
    "user": {"name": "Haya Tayseer", "image": "https://images.unsplash.com/photo-1512288094938-363287817259?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=700&q=60"}
  },
  {
    "name": "Post 6",
    "image": "https://images.unsplash.com/photo-1551636898-47668aa61de2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBvc3RzfGVufDB8fDB8fHww&auto=format&fit=crop&w=1400&q=60",
    "content": "Content of post 6",
    "isFavorite": false,
    "user": {"name": "Shahed Aldeqes", "image": "https://images.unsplash.com/photo-1466119408458-cf3ad09fc676?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=700&q=60"}
  },
  {
    "name": "Post 7",
    "image": "https://images.unsplash.com/photo-1543495843-003e36e21ed4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHBvc3RzfGVufDB8fDB8fHww&auto=format&fit=crop&w=1400&q=60",
    "content": "Content of post 7",
    "isFavorite": true,
    "user": {"name": "Shatha Almajdalwi", "image": "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=700&q=60"}
  },
  {
    "name": "Post 8",
    "image": "https://images.unsplash.com/photo-1592762224962-5f98a3a00621?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBvc3RzfGVufDB8fDB8fHww&auto=format&fit=crop&w=1400&q=60",
    "content": "Content of post 8",
    "isFavorite": false,
    "user": {"name": "Lamaa Rami", "image": "https://images.unsplash.com/photo-1531986733711-de47444e8cd8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=700&q=60"}
  },
  {
    "name": "Post 9",
    "image": "https://plus.unsplash.com/premium_photo-1675511339014-53e4683a3953?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBvc3RzfGVufDB8fDB8fHww&auto=format&fit=crop&w=1400&q=60",
    "content": "Content of post 9",
    "isFavorite": true,
    "user": {"name": "Dodo Mufid", "image": "https://images.unsplash.com/photo-1498746607408-1e56960e3bdd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=700&q=60"}
  },
  {
    "name": "Post 10",
    "image": "https://images.unsplash.com/photo-1519417688547-61e5d5338ab0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG9zdHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60",
    "content": "Content of post 10",
    "isFavorite": false,
    "user": {"name": "Samar Isai", "image": "https://media.istockphoto.com/id/1439424466/photo/portrait-against-the-sky.webp?s=170667a&w=0&k=20&c=y2LA4HJsmpN6qeS07AF3fFjABoKnziZcJ5oYpM8HsQc="}
  }
];