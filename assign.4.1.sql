    create table `students` (
        `name` varchar(20),
        `year` varchar(10),
        `major_id` int,
        `stu_subid` int,
        `address` varchar(100),
        `total_credit` double default 0,
        `avg_credit` double,
        `is_enroll` tinyint(1) default 1 
    ) default charset=utf8;