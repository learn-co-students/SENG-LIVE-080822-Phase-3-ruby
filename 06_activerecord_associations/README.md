## 6. ActiveRecord Associations

### SWBAT

- [ ] Review domain modeling
- [ ] Review foreign vs primary keys
- [ ] Review rake and migrations
- [ ] Explain what macros are in Ruby classes
- [ ] Observe how to configure One to Many and Many to Many relationships using AR
- [ ] Observe using built in AR methods to access associated instances


# ActiveRecord Steps
1. Draw out your Domain
2. Generate Migrations 
    - `rake db:create_migration NAME=create_model`
3. Fill out migration files
```
class CreateAppointment < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :request
      t.datetime :time
      t.integer :pet_id
      t.integer :handler_id
    end 
  end
end
```
4. Migrate
    - `rake db:migrate`
    - review schema, make any corrections
5. Create Model files
```
class Appointment < ActiveRecord::Base
end 
```
6. Add Associations
7. Seed 

#end

```
reviews 
    content: string
    owner_id: integer 
    handler_id: integer

# owners -<reviews >- handlers
```


```
r1 = <Review:0x00007f93bb12f740 id: 1, content: "is a good handler", owner_id: 6, handler_id: 7>
r1.owner ->  #<Owner:0x00007f93a9163390
 id: 6,
 username: "ada_likes_2_code",
 address: "0909 PL SW Seattle Wa 90000",
 email: "ada_lovelace@gmail.com",
 phone: 0>

r1.handler -> #<Handler:0x00007f93c923b0e0 id: 7, name: "Astin Gamgee", email: "pupper_lover@gmail.com", phone: 0>


```
