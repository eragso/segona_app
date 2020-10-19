import 'dart:async';

class Dog {
  final String name;
  final String location;
  final String description;
  String imageUrl;

  int rating = 10;

  Dog(this.name, this.location, this.description);

  Future getImageUrl() async {
    if (this.name == 'Kamina') {
      imageUrl = 'https://i.pinimg.com/originals/dc/46/9b/dc469b0939f953a3ac7e5cc5c91615dc.gif';    
      }else if (this.name == 'Simon') {
      imageUrl = 'https://37.media.tumblr.com/182ea80082e116cb62049b414928b5b4/tumblr_n739b4mbE61qf2huro2_500.gif';
      }else if (this.name == 'Yoko') {
      imageUrl = 'https://media1.tenor.com/images/7c1aefdf1590004cb200eab4f9d69704/tenor.gif?itemid=7866607';
      }else if (this.name == 'Nia') {
      imageUrl = 'https://i.pinimg.com/originals/1e/78/3e/1e783e92b35139b0c6cec7cd9963969b.gif';
      }else if (this.name == 'Rossiu') {
      imageUrl = 'https://pa1.narvii.com/6590/7e488ad25d82fdb3fbfa6773fd70f6f83595e4b6_hq.gif';
      }else if (this.name == 'Viral') {
      imageUrl = 'https://24.media.tumblr.com/d86f302b4807088eb9859aa70dee1ac2/tumblr_mtod2srKRK1sfwn8wo1_500.gif';
      }else if (this.name == 'Kittan') {
      imageUrl = 'https://thumbs.gfycat.com/FlatKindlyGrebe-small.gif';
      }else if (this.name == 'Leeron') {
      imageUrl = 'https://pa1.narvii.com/6577/66ef1862c534089633a34bf0dc97f6c9ac592569_hq.gif';
      }else if (this.name == 'Anti-Spiral') {
      imageUrl = 'https://pa1.narvii.com/6566/c4f6f9bc861f772c89c31d2827cb6a9f96f642d0_hq.gif';
      }else if (this.name == 'Lordgenome') {
      imageUrl = 'https://64.media.tumblr.com/7a42a7ddb247ee677ec4e7965b511f0d/tumblr_ohew4lIomZ1sg4t9fo1_r1_250.gifv';
      return; 
      }
    }
  }
