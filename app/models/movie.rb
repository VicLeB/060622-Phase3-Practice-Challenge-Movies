class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor, character_name, salary)
        Role.create(character_name: character_name, salary: salary, actor: actor, movie: self)
    end

    def all_credits
        roles.map{|r| r.credit}
    end

    def fire_actor(actor)
        role= Role.find(actor.id)
        role.destroy
    end

end