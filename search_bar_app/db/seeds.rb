# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

QuizImage.delete_all

quiz_images = QuizImage.create([ 
												{ name: "beat up chuck taylors" , 
													filepath: "beat_up_chuck_taylor.jpg", 
													category: "clothing", 
													value: "1" },

													{ name: "sperry topsiders" , 
													filepath: "sperry_topsider.jpg", 
													category: "clothing", 
													value: "3" },

													{ name: "birkin bag" , 
													filepath: "birkin_bag.jpg", 
													category: "clothing", 
													value: "4" },

													{ name: "vans sneakers" , 
													filepath: "vans_sneakers.jpg", 
													category: "clothing", 
													value: "2" },

													{ name: "bow tie", 
													filepath: "bow_tie.jpg", 
													category: "clothing", 
													value: "4" },

													{ name: "flannel shirt" , 
													filepath: "flannel_shirt.jpg", 
													category: "clothing", 
													value: "2" },

													{ name: "flip flops" , 
													filepath: "flip_flops.jpg", 
													category: "clothing", 
													value: "2" },

													{ name: "jean jacket" , 
													filepath: "jean_jacket.jpg", 
													category: "clothing", 
													value: "2" },

													{ name: "leather jacket" , 
													filepath: "leather_jacket.jpg", 
													category: "clothing", 
													value: "1" },

													{ name: "overalls" , 
													filepath: "overalls.jpg", 
													category: "clothing", 
													value: "1" }

													])



