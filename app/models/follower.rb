class Follower

    attr_reader :name, :age, :life_moto

    @@all = []

    def initialize(name, age, life_moto)
        @name = name
        @age = age
        @life_moto = life_moto
        Follower.all << self
    end

    def self.all
        @@all
    end

    def cults
        self.blood_oaths.map do |blood_oath|
            blood_oath.cult
        end
    end

    def blood_oaths
        BloodOath.all.select do |blood_oath|
            blood_oath.follower == self
        end
    end
    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.of_a_certain_age(age)
        Follower.all.select do |follower|
            follower.age >= age
        end
    end

end
