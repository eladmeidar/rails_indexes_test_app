class SuperUser < User
  set_inheritance_column 'sub_type'
end
