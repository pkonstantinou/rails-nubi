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
t4.user = u2
t5 = Track.new(title: 'Sales strategy')
t5.user = u2

step1 = Step.new(title: 'Introduction', content_type: 'text')
step1.track = t1
step1.save
step2 = Step.new(title: 'Company policy explained', content_type: 'video')
step2.track = t1
step2.save
step3 = Step.new(title: 'Cde of conduct', content_type: 'pdf')
step3.track = t1
step3.save

step1 = Step.new(title: 'Team introduction', content_type: 'text')
step1.track = t2
step1.save
step2 = Step.new(title: 'How to be a great dev', content_type: 'video')
step2.track = t2
step2.save
step3 = Step.new(title: 'Quiz', content_type: 'text')
step3.track = t2
step3.save

step1 = Step.new(title: 'Intro', content_type: 'text')
step1.track = t3
step1.save
step2 = Step.new(title: 'Leadership priniples', content_type: 'video')
step2.track = t3
step2.save

step1 = Step.new(title: 'Presenations skills', content_type: 'video')
step1.track = t4
step1.save

step1 = Step.new(title: 'Strategy intro', content_type: 'text')
step1.track = t5
step1.save
step2 = Step.new(title: 'Sales targets', content_type: 'text')
step2.track = t5
step2.save
step3 = Step.new(title: 'Distribution network', content_type: 'text')
step3.track = t5
step3.save
step4 = Step.new(title: 'Pitch examples', content_type: 'pdf')
step4.track = t5
step4.save
step5 = Step.new(title: 'Upselling', content_type: 'text')
step5.track = t5
step5.save
step6 = Step.new(title: 'Losing a key account', content_type: 'video')
step6.track = t5
step6.save

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
