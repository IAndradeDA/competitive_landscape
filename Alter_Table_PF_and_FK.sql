USE comp_analysis;

ALTER TABLE comp_analysis.comments ADD PRIMARY KEY (id);
ALTER TABLE comp_analysis.schools ADD PRIMARY KEY (id);
ALTER TABLE comp_analysis.courses ADD PRIMARY KEY (id);

ALTER TABLE `comments` 
ADD FOREIGN KEY (`school_id` ) REFERENCES `schools` (`id` );

ALTER TABLE `courses` 
ADD FOREIGN KEY (`school_id` ) REFERENCES `schools` (`id` );