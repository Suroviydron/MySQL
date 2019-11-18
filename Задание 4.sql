use vk;

select distinct firstname from users;



delete from messages
where created_at > now();