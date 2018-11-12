class Candidate
    def initialize(profile_info = {})
        default =
        {
            age: 0,
            occupation: "Default Occupation",
            hobby: "Default Hobby",
            name: "Default Name",
            birthplace: "Default Birthplace"
        }

        default.merge!(profile_info)

        @name = default[:name]
        @age = default[:age]
        @occupation = default[:occupation]
        @hobby = default[:hobby]
        @birthplace = default[:birthplace]
    end
    attr_accessor :name, :age, :occupation, :hobby, :birthplace
end


nairobi_sen_hash =
    {
        name: "Mr. Johnston Sakaja",
        occupation: "Senator - Nairobi",
        birthplace: "Ruongo, Kisumu",
        age: 32,
        hobby: "Traveling"
    }
senator = Candidate.new(nairobi_sen_hash)
p senator.occupation
p senator.hobby
p senator.name
p senator.age
