def generate_word
  ['he', 'ro', 'ku', 'mat', 'su', 'mo', 'to', 'yu', 'ki', 'hi'].shuffle.take((2..6).to_a.sample).join
end

def generate_name
  "#{generate_word.capitalize} #{generate_word.capitalize}"
end

100.times do
  user = User.create(name: generate_name)

  10.times { user.secrets.create(text: 'Something no one should see.') }
end
