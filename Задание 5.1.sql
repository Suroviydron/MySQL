-- ����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������.

update vk.users

set
created_at = now(),
updated_at = now()