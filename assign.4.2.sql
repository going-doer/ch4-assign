use kwebdb1;
create table `users` (
  `id` varchar(20) not null primary key,
  `password` varchar(100) not null,
  `nickname` varchar(100) default '',
  `profile_image` varchar(200) default '',
  `profile_msg` varchar(200) default '',
  `is_delete` tinyint(1) default 0,
  `registered_year` varchar(10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `channels` (
 `name` varchar(20) not null primary key,
 `creator_id` varchar(20) references users(id),
 `linkurl` varchar(200) not null,
 `capacity` int default 10,
 `is_leave` tinyint(1) default 0,
 `create_at` timestamp
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `chats` (
    `id` int not null auto_increment primary key,
    `content` longtext,
    `user_id` varchar(20) references users(id),
    `channel_name` varchar(20) references channels(name),
    `create_at` timestamp
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `follows` (
    `follower` varchar(20) references users(id),
    `followee` varchar(20) references users(id),
    `create_at` timestamp,
    primary key(follower, followee)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `blocks` (
    `blocker` varchar(20) references users(id),
    `blockee` varchar(20) references users(id),
    `create_at` timestamp,
    primary key(blocker, blockee)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
