%w.rack tilt backports INT TERM..map{|l|trap(l){$r.stop}rescue require(l)}
R=Rack;$n=Sinatra=Module.new{A,O,D,H,S,F,$p=R::Builder.new,Object,:define_method,Hash,/@@ *([^\n]+)\n(((?!@@)[^\n]*\n)*)/m,File,4567;Application=A}
%w[get post put delete].map{|m|O.send(D,m){|u,&b|A.map(u){run->(e){[200,{"Content-Type"=>"text/html"},[A.instance_eval(&b)]]}}}}
Tilt.mappings.map{|k,v|O.send(D,k){|n,*o|$t||=(h={};F.read(caller.first[/^[^:]+/]).scan(S){|a,b,c|h[a]=b};h);v.new(*o){(n.to_s==n)?(n):($t[n.to_s])}.render(A,o[0].try(:[],:locals)||{})}}
%w[set enable disable configure helpers use register].map{|m|O.send(D,m){|*_,&b|b.try(:[])}};at_exit{R::Handler.get("webrick").run(A,:Port=>$p){|s|$r=s}}
%w[params session].map{|m|O.send(D,m){$q.send(m)}};A.use(R::Session::Cookie);A.use(R::Lock)
O.send(D,:before){|&b|A.use(R::Config,&b)};before{|e|$q=R::Request.new(e);$q.params.dup.map{|k,v|params[k.to_sym]=v}}
puts "== Almost #$n/No Version has taken the stage on #$p for development with backup from Webrick"
