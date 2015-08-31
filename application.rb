require "sinatra"
require "sinatra/reloader"
require "prmd"

def combine(schema_filename)
  File.open(schema_filename, 'w') do |f|
    f.write Prmd.combine("./schema/schemata",
                         meta:
                           "./schema/meta.json") #base:
  end
end

get "/" do
  erb <<here
<p><a href="/combine-schemata">Compile</a></p>
here
end

get "/combine-schemata" do
  begin
    combine("./schema.json")
    redirect "/docson/index.html#/schema.json"
  rescue SystemExit => e
    halt e.to_s + "<br/>" + "please look at the serve logs"
  end
end

get "/schema.json" do
  content_type :json
  send_file ("./schema.json")
end

get "/simple.yaml" do
  content_type :json
  send_file ("./schema/schemata/simple.yml")
end

get "/ingredients-form" do
  erb :"ingredients-form"
end

get "/schema-with-refs.json" do

end

get "/schema/ice-man.json" do

end

get "/schema/cow.json" do

end

get "/schema/hen.json" do

end

get "/schema/grocer.json" do

end
