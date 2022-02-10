=begin
Есть таблица students с колонками 
id int 
name varchar 
created_at datetime 
parent_id int 
=end

students_count = Student.all.count
#если в поле name чисто имя, без фамилий, то 
ivan_count = Student.find_by(name: "Иван").count
students_after_date = Student.where(created_at: '2020-09-01 00:00:00'..).count
#или же 
students_after_date2 = Student.where('created_at >= ?', '2020-09-01 00:00:00').count

=begin
Так же есть таблица parents (см задание 5) 
id int 
name varchar 
created_at datetime 
=end

#не уверен, что так можно
students_w_parents_count = Student.where(Parent.find(:parent_id) != nil).count
students_w_p_Mariia_count = Student.where(Parent.where(name: "Мария").find(:parent_id) != nil).count

students_wout_parents_count = Student.where(Parent.find(:parent_id) == nil).count
#или
students_wout_parents_count2 = Student.where(parent_id: nil).count