#The environment variable DATABASE_URL should be in the following format:
# => postgres://{user}:{password}@{host}:{port}/path
configure :production, :development do
	db = URI.parse(ENV['postgres://ijuapccdktmlhi:926a1fc2fcfbe853919bae97a91e824556695090f89ea91a20f319556d329630@ec2-54-243-147-162.compute-1.amazonaws.com:5432/d7t9km17l81hju
'] || 'postgres://pal:doot@localhost:5432/avatarprojectmmotz')

	ActiveRecord::Base.establish_connection(
			:adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
			:host     => db.host,
			:username => db.user,
			:password => db.password,
			:database => db.path[1..-1],
			:encoding => 'utf8'
	)
end