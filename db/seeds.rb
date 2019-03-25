danny_pudi = Actor.create(first_name: "Danny", last_name: "Pudi")
abed = Character.create(name:'Abed', actor_id: danny_pudi.id)

frasier = Show.new(:name => "Frasier")
niles = Character.new(:name => "Niles Crane")
niles.show = frasier
niles.save

urkel = Character.new(:name => "Steve Urkel")
urkel.catchphrase = "Did I do that?"
urkel.save

jules_cobb = Character.new(:name => "Jules Cobb")
jules_cobb.build_show(:name => "Cougar Town")

malcolm = Character.new(:name => "Malcolm Reynolds")
