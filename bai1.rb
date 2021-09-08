a = []
#Câu a
puts "Nhập mảng:"
for i in 1..5 do
    a[i - 1] = gets.to_i
    if a[i - 1] == ''  
        a[i - 1] = 0
    end
end

#Câu b
sum = a.inject(0){|result, element| result + element}
puts "Tổng các phần tử của mảng: #{sum}"

#Câu c

new_a = Proc.new do |a|
    #a.map!{|element| element ** 2 if element != 6 and element != 7}
    a.each_index do |i|
        if a[i] == 6 or a[i] == 7
            next
        end
        a[i] **= 2
    end 
end     
puts "Mảng lũy thừa: #{new_a.call(a)}"