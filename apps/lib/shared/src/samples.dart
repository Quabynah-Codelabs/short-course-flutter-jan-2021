import 'package:apps/data/entities/src/topic/topic.dart';
import 'package:apps/domain/models/models.dart';
import 'package:uuid/uuid.dart';

/// sample topics to choose from
/// image credits -> https://unsplash.com/
final sampleTopics = <BaseTopic>[
  Topic(
    id: Uuid().v4(),
    title: 'Art',
    imageUrl:
        'https://images.unsplash.com/photo-1460661419201-fd4cecdf8a8b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YXJ0c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Beauty',
    imageUrl:
        'https://images.unsplash.com/photo-1570172619644-dfd03ed5d881?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXR5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Books',
    imageUrl:
        'https://images.unsplash.com/photo-1519682337058-a94d519337bc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Ym9va3N8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Comics',
    imageUrl:
        'https://images.unsplash.com/photo-1600430086946-2d9fc61bbefc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Y29taWNzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Culture',
    imageUrl:
        'https://images.unsplash.com/photo-1463592177119-bab2a00f3ccb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Y3VsdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Fashion',
    imageUrl:
        'https://images.unsplash.com/photo-1537832816519-689ad163238b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFzaGlvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Fiction',
    imageUrl:
        'https://images.unsplash.com/photo-1599185186578-0ba91c2a15c0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8ZmljdGlvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Film',
    imageUrl:
        'https://images.unsplash.com/photo-1440404653325-ab127d49abc1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmlsbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Gaming',
    imageUrl:
        'https://images.unsplash.com/photo-1593305841991-05c297ba4575?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Z2FtaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Humor',
    imageUrl:
        'https://images.unsplash.com/photo-1594466245134-136169b2d0a1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8aHVtb3J8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Music',
    imageUrl:
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bXVzaWN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Non-fiction',
    imageUrl:
        'https://images.unsplash.com/photo-1554357395-dbdc356ca5da?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bm9uJTIwZmljdGlvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Photography',
    imageUrl:
        'https://images.unsplash.com/photo-1542038784456-1ea8e935640e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG9ncmFwaHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Podcasts',
    imageUrl:
        'https://images.unsplash.com/photo-1526328828355-69b01701ca6a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cG9kY2FzdHN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Poetry',
    imageUrl:
        'https://images.unsplash.com/photo-1533271802434-53997a5f9e6c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ldHJ5fGVufDB8fDB8&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'TV',
    imageUrl:
        'https://images.unsplash.com/photo-1528928441742-b4ccac1bb04c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8dHZ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
  Topic(
    id: Uuid().v4(),
    title: 'Visual Design',
    imageUrl:
        'https://images.unsplash.com/photo-1607722890244-7eb2d194e944?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlzdWFsJTIwZGVzaWdufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
  ),
];
