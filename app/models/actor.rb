class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def total_salary
        jobs = self.roles.map{|r| r.salary}
        jobs.sum
    end

    def blockbusters
        movies.filter{|m| m.box_office_earnings > 50000000}
    end

    def self.most_successful
        net = Actor.all.map{|a| a.total_salary}.max
        self.find{|a| a.total_salary == net}
    end

end