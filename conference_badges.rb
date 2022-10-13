#Write a badge_maker method that, when provided a person's name, 
#will create and *return* this message.
#This should indicate that you should not use the keyword puts

def badge_maker name = "Arel"
    "Hello, my name is #{name}."
end

#Write a #batch_badge_creator method that takes an array of names 
#as an argument and returns an array of badge messages.
#.map returns an array so use that method

def batch_badge_creator names
    names.map do |name|
        "Hello, my name is #{name}."
    end
end

#Write a method called #assign_rooms that takes the list of speakers 
#and assigns each speaker to a room. Make sure that each room only 
#has one speaker.
#Not sure how .with_index works and why the argument should be 1

def assign_rooms names
    names.map.with_index(1) do |name, room_number|
        "Hello, #{name}! You'll be assigned to room #{room_number}!"
    end
end



def printer names 
    batch_badge_creator(names).each do |badge|
        puts badge
    end

    assign_rooms(names).each do |room_number|
        puts room_number
    end
end

