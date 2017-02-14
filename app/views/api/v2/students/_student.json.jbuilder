json.id student.id
json.first_name student.first_name
json.last_name student.last_name
if student.age < 20
  json.age student.age + "(still a teenager)"
else
  json.age student.age
end
  json.school student.school