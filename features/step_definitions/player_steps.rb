Given /^the following player records$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |hash|
    Player.create!(hash)
  end
end

