json.id @goal.id
json.title @goal.title
json.progress @goal.progress
json.children @goal.children.each do | child |
  json.id child.id
  json.title child.title
  json.progress child.progress
  json.children child.children.each do | sub_child |
    json.id sub_child.id
    json.title sub_child.title
    json.progress sub_child.progress
    json.children sub_child.children
  end
end

