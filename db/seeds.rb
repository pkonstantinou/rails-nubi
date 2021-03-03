p 'Seeding started...'

u1 = User.new(email: 'u1@mail.com', password: '123456')
u1.save

u2 = User.new(email: 'u2@mail.com', password: '123456')
u2.manager = u1
u2.save

t1 = Track.new(title: 'Code of Conduct training')
t1.user = u1
t2 = Track.new(title: 'Junior Software Engineer')
t2.user = u1
t3 = Track.new(title: 'New manager training')
t3.user = u1
t4 = Track.new(title: 'Presentations skill')
t4.user = u1
t5 = Track.new(title: 'Sales strategy')
t5.user = u1

step1 = Step.new(title: 'Step 1', content_type: 'audio')
step1.track = t1
step1.save
step2 = Step.new(title: 'Step 2', content_type: 'video')
step2.track = t1
step2.save
step3 = Step.new(title: 'Step 3', content_type: 'text')
step3.track = t1
step3.save

t1.save
t2.save
t3.save
t4.save
t5.save

a1 = Assignment.new
a1.track = t1
a1.user = u2
a1.save

a1.track.steps.each do |step|
  StepScore.create(assignment: a1, step: step)
end

p 'Seeding ended...'
