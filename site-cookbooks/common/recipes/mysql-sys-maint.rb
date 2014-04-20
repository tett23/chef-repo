include_recipe 'users'

users_manage 'mysql-sys-maint' do
  group_id 1200
  action [:remove, :create]
end
