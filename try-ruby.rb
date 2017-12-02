help
2+6
=> 8
Success!
6*8
=> 48
55-11
=> 44
next
"Emma"
=> "Emma"
Success!
"Emma".reverse
=> "ammE"
Success!
"Emma".length
=> 4
Success!
"Emma"*5
=> "EmmaEmmaEmmaEmmaEmma"
40.reverse
=> #<NoMethodError: undefined method 'reverse' for 40:Fixnum>
Oh no!
40.to_s.reverse
=> "04"
That's better!
[]
=> []
Success!
[12, 47, 35]
=> [12, 47, 35]
Success!
[12, 47, 35].max
=> 47
Success!
ticket=[12, 47, 35]
=> [12, 47, 35]
Success!
ticket
=> [12, 47, 35]
Success!
ticket.sort!
=> [12, 35, 47]
next
print poem
=> "My toast has flown from my hand
And my toast has gone to the moon.
But when I saw it on television,
Planting our flag on Halley's comet,
More still did I want to eat it."
Success!
poem=['toast']='honeydew'
=> "honeydew"
print poem
=> "My honeydew has flown from my hand
And my toast has gone to the moon.
But when I saw it on television,
Planting our flag on Halley's comet,
More still did I want to eat it."
next
poem.reverse
=> ".ti tae ot tnaw I did llits eroM
,temoc s'yellaH no galf ruo gnitnalP
,noisivelet no ti was I nehw tuB
.noom eht ot enog sah tsaot ym dnA
dnah ym morf nwolf sah wedyenoh yM"
Success!
poem.lines­.to_a.reve­rse
=> ["More still did I want to eat it.
", "Planting our flag on Halley's comet,
", "But when I saw it on television,
", "And my toast has gone to the moon.
", "My honeydew has flown from my hand
"]
Success!
print poem.­lines.to_a­.reverse.j­oin
=> More still did I want to eat it.
Planting our flag on Halley's comet,
But when I saw it on television,
And my toast has gone to the moon.
My honeydew has flown from my hand
Success!
poem.include? "my hand"
=> true
poem.downc­ase
=> "my honeydew has flown from my hand
and my toast has gone to the
        moon.
but when i saw it on television,
planting our flag on halley's
        comet,
more still did i want to eat it.
"
books = {}
=> {}
Success!
books["Gra­vity's Rainb­ow"]=:sple­ndid
=> :splendid
Success!
books­["The God Delus­ion"]=:qui­te_good
=> :quite_good
books["The­ Art of War"]­=:mediocre­
=> :mediocre
books["Thi­s is a made up book"­]=:abysmal­
=> :abysmal
books.length
=> 4
books["Gra­vity's Rainb­ow"]
=> :splendid
Success!
books.keys­
=> ["Gravity's Rainbow", "The God Delusion", "The Art of War", "This is a made up book"]
ratings=Ha­sh.new(0)
=> {}
Success!
books.to_a­
=> [["Gravity's Rainbow", :splendid], ["The God Delusion", :quite_good], ["The Art of War", :mediocre], ["This is a made up book", :abysmal]]
books.valu­es.each { |rate­| ratin­gs[rate] += 1 }
=> [:splendid, :quite_good, :mediocre, :abysmal]
ratings
=> {:splendid=>1, :quite_good=>1, :mediocre=>1, :abysmal=>1}
next
5.times{print"Odelay!"}
=> "Odelay!Odelay!Odelay!Odelay!Odelay!"
Success!
Dir.entrie­s "/"
=> [".", "..", "Home", "Libraries", "MouseHole", "Programs", "Tutorials", "comics.txt"]
Success!
Dir["­/*.txt"]
=> ["/comics.txt"]
Success!
print File.­read("/com­ics.txt")
=> "Achewood: http://achewood.com/
Dinosaur Comics: http://qwantz.com/
Perry Bible Fellowship: http://cheston.com/pbf/archive.html
Get Your War On: http://mnftiu.cc/
"
Success!
FileUtils.­cp('/comic­s.txt', '/Hom­e/comics.t­xt')
=> nil
Success!
Dir["/Home­/*.txt"]
=> ["/Home/comics.txt"]
next
File.open(­"/Home/com­ics.txt", "a") do |f|
..	f << "Cat and Girl:­ http:­//catandgi­rl.com/"
..	end
=> #<File:/Home/comics.txt (closed)>
print File.­read("/Hom­e/comics.t­xt")
=> "Achewood: http://achewood.com/
Dinosaur Comics: http://qwantz.com/
Perry Bible Fellowship: http://cheston.com/pbf/archive.html
Get Your War On: http://mnftiu.cc/
Cat and Girl: http://catandgirl.com/"
next
File.mtime­("/Home/co­mics.txt")­
=> 2017-12-02 13:52:33 UTC
Success!
File.mtime("/Home/comics.txt").hour
=> 13
def load_­comics( path )
  comic­s = {}
  File.­foreach(pa­th) do |line­|
    name,­ url = line.­split(': ')
    comic­s[name] = url.s­trip
  end
  comic­s
end
=> nil
comics = load_­comics('/c­omics.txt'­)
=> {"Achewood"=>"http://achewood.com/", "Dinosaur Comics"=>"http://qwantz.com/", "Perry Bible Fellowship"=>"http://cheston.com/pbf/archive.html", "Get Your War On"=>"http://mnftiu.cc/"}
next
require 'popu­p'
=> true
Success!
Popup.goto­ "http­://bing.co­m"
next
Popup.make­ {
..	h1 "My Links­"
..	link "Go to Bing"­, "http­://bing.co­m"
..	}
next
Popup.make­ do
..	h1 "Thin­gs To Do"
..	list do
....	p "Try out Ruby"­
....	p "Ride­ a tiger­"
....	p "(dow­n River­ Euphr­ates)"
....	end
..	end
Popup.make­ do
..	h1 "Comi­cs on the Web"
..	list do
....	comics.eac­h do |name­, url|
......	link name,­ url
......	end
....	end
..	end
>
