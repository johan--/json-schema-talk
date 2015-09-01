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

def combine_with_refs(schema_filename)
  File.open(schema_filename, 'w') do |f|
    f.write Prmd.combine("./schema/schemata-with-refs",
                         meta:
                           "./schema/meta.json") #base:
  end
end

get "/" do
  erb <<here
<p><a href="/combine-schemata">Compile</a></p>
<p><a href="/combine-with-refs">Compile with refs</a></p>
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
get "/combine-with-refs" do
  begin
    combine_with_refs("./schema-with-refs.json")
    redirect "/docson/index.html#/schema-with-refs.json"
  rescue SystemExit => e
    halt e.to_s + "<br/>" + "please look at the serve logs"
  end
end

get "/schema.json" do
  content_type :json
  send_file ("./schema.json")
end

get "/simple.yml" do
  content_type :json
  send_file ("./schema/schemata/simple.yml")
end

get "/ingredients-form" do
  erb :"ingredients-form"
end

get "/schema-with-refs.json" do
  content_type :json
  send_file ("./schema-with-refs.json")
end

get "/schemata/ice-man.yml" do
  content_type :json
  send_file ("./schema/schemata-with-refs/ice-man.yml")
end

get "/schemata/cow.yml" do
  content_type :json
  send_file ("./schema/schemata-with-refs/cow.yml")
end

get "/schemata/hen.yml" do
  content_type :json
  send_file ("./schema/schemata-with-refs/hen.yml")
end

get "/schemata/grocer.yml" do
  content_type :json
  send_file ("./schema/schemata-with-refs/grocer.yml")
end

get "/ingredients-form-with-refs" do
  erb :"ingredients-form-with-refs"
end

get "/buttons-options.json" do
  content_type :json
  send_file ("./buttons-options.json")
end

get "/search" do
  erb :search
end
