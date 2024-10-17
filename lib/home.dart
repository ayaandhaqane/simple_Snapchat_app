import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/snp.png'), // Your profile image
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[800],
                  ),
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.search, color: Colors.white),
                ),
              ],
            ),
            Text(
              'Chat',
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[800],
                  ),
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.person_add, color: Colors.white),
                ),
                SizedBox(width: 16),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[800],
                  ),
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.more_horiz, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 81, 114, 170), 
                  ),
                  child: Text('All'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[900], 
                  
                  ),
                  child: Text('Unread'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[900], 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('Groups'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[900], 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('Unreplied'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[900], 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('Stories'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[900], // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('Best Friends'),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                _buildChatItem(
                  'images/user1.png',
                  'Bahja Abdi',
                  'Delivered',
                  '4m',
                  109,
                  Icons.chat_bubble_outline_outlined,
                ),
                _buildChatItem(
                  'images/user2.jpg',
                  'Iqra Barre',
                  'New Snap',
                  '2h',
                  348,
                  Icons.chat_bubble_outline_outlined,
                ),
                _buildChatItem(
                  'images/user3.jpg',
                  'Neza',
                  'New Snap',
                  '2h',
                  677,
                  Icons.chat_bubble_outline_outlined,
                ),
                _buildChatItem(
                  'images/user4.png',
                  'Asma Tamhied',
                  'New Snap',
                  '59m',
                  67,
                  Icons.chat_bubble_outline_outlined,
                ),
                _buildChatItem(
                  'images/user5.png',
                  'Edman',
                  'New Snap',
                  '2h',
                  425,
                  Icons.chat_bubble_outline_outlined,
                ),
                _buildChatItem(
                  'images/user6.png',
                  'Iqra Yasin',
                  'New Snap',
                  '2h',
                  67,
                  Icons.chat_bubble_outline_outlined,
                ),
                _buildChatItem(
                  'images/user7.png',
                  'Muzamil',
                  'New Snap',
                  '2h',
                  1223,
                  Icons.chat_bubble_outline_outlined,
                ),
                _buildChatItem(
                  'images/user6.png',
                  'Ikraan',
                  'New Snap st',
                  '2h',
                  890,
                  Icons.chat_bubble_outline_outlined,
                ),
                _buildChatItem(
                  'images/user7.png',
                  'Yoniz',
                  'New Snap',
                  '2h',
                  700,
                  Icons.chat_bubble_outline_outlined,
                ),
                _buildChatItem(
                  'images/user4.png',
                  'Hamdi',
                  'New Snap',
                  '2h',
                  14,
                  Icons.chat_bubble_outline_outlined,
                ),
                _buildChatItem(
                  'images/user5.png',
                  'Bushara',
                  'New Snap',
                  '2h',
                  7,
                  Icons.chat_bubble_outline_outlined,
                ),
                _buildChatItem(
                  'images/user6.png',
                  'Asma Tamhied',
                  'New Snap',
                  '2h',
                  500,
                  Icons.chat_bubble_outline_outlined,
                ),
                
              ],
            ),
          ),
        ],
        
      ),
    );
  }

  

  Widget _buildChatItem(String avatarPath, String name, String status, String time, int streak, IconData actionIcon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(avatarPath),
            radius: 30,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  status,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                Row(
                  children: [
                    Text(
                      '$time • ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '$streak',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(Icons.whatshot, color: Colors.orange, size: 16),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[800],
            ),
            padding: EdgeInsets.all(8),
            child: Icon(actionIcon, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

