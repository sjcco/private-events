# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



u1 = User.create(name: 'David')
u2 = User.create(name: 'Donald')
u3 = User.create(name: 'Daniel')
u4 = User.create(name: 'Drew')

e1 = u1.events.build(title: 'Examplefuture1',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse diam orci, pellentesque sagittis ornare at.',
        starting_date_time: DateTime.new(2025,2,3,4,5,6),
          ending_date_time: DateTime.new(2025,3,4,5,6,7),
                  location: 'somewhere'
                    )

e2 = u2.events.build(title: 'Examplefuture2',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse diam orci, pellentesque sagittis ornare at.',
        starting_date_time: DateTime.new(2026,2,3,4,5,6),
          ending_date_time: DateTime.new(2026,3,4,5,6,7),
                  location: 'somewhere'
                    )                    

e3 = u3.events.build(title: 'Examplefuture3',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse diam orci, pellentesque sagittis ornare at.',
        starting_date_time: DateTime.new(2027,2,3,4,5,6),
          ending_date_time: DateTime.new(2027,3,4,5,6,7),
                  location: 'somewhere'
                    )
                    
e4 = u4.events.build(title: 'Examplepast1',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse diam orci, pellentesque sagittis ornare at.',
        starting_date_time: DateTime.new(2020,2,3,4,5,6),
          ending_date_time: DateTime.new(2020,3,4,5,6,7),
                  location: 'somewhere'
                    )
                    
e5 = u1.events.build(title: 'Examplepast2',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse diam orci, pellentesque sagittis ornare at.',
        starting_date_time: DateTime.new(2019,2,3,4,5,6),
          ending_date_time: DateTime.new(2019,3,4,5,6,7),
                  location: 'somewhere'
                    )
                    
e6 = u2.events.build(title: 'Examplefuture1',
               description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse diam orci, pellentesque sagittis ornare at.',
        starting_date_time: DateTime.new(2025,2,3,4,5,6),
          ending_date_time: DateTime.new(2025,3,4,5,6,7),
                  location: 'somewhere'
                    )   
                    
u1.attended_events << e1
u1.attended_events << e2
u1.attended_events << e3
u2.attended_events << e4
u2.attended_events << e5
u2.attended_events << e6
u3.attended_events << e1
u4.attended_events << e6
