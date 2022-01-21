def biggest_fish_1(fishes) #O(n^2)
    biggest_fish = fishes[0]
    (0...fishes.length - 1).each do |i|
        fish1 = fishes[i]
        (i+1...fishes.length).each do |j|
            fish2 = fishes[j]
            if fish2.length > biggest_fish.length
                biggest_fish = fish2
            elsif fish1.length > biggest_fish.length
                biggest_fish = fish1
            end 
        end
    end
    biggest_fish
end
p biggest_fish_1(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'])

def biggest_fish_2(fishes)#O(n log n)
    return fishes[0] if fishes.length <= 1
    pivot = fishes.shift
    bigger = fishes.select{ |fish| fish.length > pivot.length }
    sorted_right = biggest_fish_2(bigger)
end
p biggest_fish_2(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'])

def biggest_fish_3(fishes) #0(n)
    biggest_fish = fishes[0]

    fishes.each do |fish|
        if fish.length > biggest_fish.length
            biggest_fish = fish
        end
    end
    biggest_fish
end
p biggest_fish_3(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'])

