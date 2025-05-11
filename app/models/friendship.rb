class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User", foreign_key: "friend_id"
def self.types
[["friend",1],["family",2]]
end
def self.findtypes(x)
case x
when 1
"friend"
else
"family"
end
end
end
