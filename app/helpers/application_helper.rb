module ApplicationHelper
  def full_name(person)
    person.first_name.to_s + " " + person.last_name.to_s
  end
end
