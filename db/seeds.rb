require 'open-uri'

p 'Seeding started...'

u1 = User.new(email: 'tom@nubiapp.co', password: '123456')
u1.first_name = 'Tom'
u1.last_name = 'Louwagie'
u1.role = 'Technical Project Manager'
u1.is_manager = true
u1.save

u2 = User.new(email: 'paschalis@nubiapp.co', password: '123456')
u2.first_name = 'Paschalis'
u2.last_name = 'Konstantinou'
u2.role = 'Backend Developer'
u2.manager = u1
u2.save

u3 = User.new(email: 'thilo@nubiapp.co', password: '123456')
u3.first_name = 'Thilo'
u3.last_name = 'Rudat'
u3.role = 'Lead Designer'
u3.manager = u1
u3.save

u4 = User.new(email: 'marc@nubiapp.co', password: '123456')
u4.first_name = 'Marc'
u4.last_name = 'Andreessen'
u4.role = 'CEO'
u4.save

t1 = Track.new(title: 'New employee training')
t1.user = u1

t2 = Track.new(title: 'Backend Software Engineer')
t2.user = u1

t3 = Track.new(title: 'New manager training')
t3.user = u1

t4 = Track.new(title: 'Presentations skill')
t4.user = u2

t5 = Track.new(title: 'Sales strategy')
t5.user = u2

t6 = Track.new(title: 'Executive coaching')
t6.user = u4

t7 = Track.new(title: 'Managing teams')
t7.user = u1

t8 = Track.new(title: 'Company strategy')
t8.user = u4

t9 = Track.new(title: 'Intro to our Tech Stack')
t9.user = u1

# step1 = Step.new(title: 'Code of conduct', content_type: 'PDF')
# step1.track = t1
# file1 = URI.open('https://www.total.com/sites/g/files/nytnzq111/files/atoms/files/code_de_conduite_en_0.pdf')
# step1.media.attach(io: file1, filename: 'total.pdf', content_type: 'total/pdf')
# step1.save!

# step2 = Step.new(title: 'Safety introduction', content_type: 'Video')
# step2.track = t1
# file2 = URI.open('https://total-mc29-videos-pad.damdy.com/mc29/20170427-161047-6385a00d/media_mp4_HD_1080p_5.mp4')
# step2.media.attach(io: file2, filename: 'video.mp4', content_type: 'video/mp4')
# step2.save!

# step3 = Step.new(title: 'Team introduction', content_type: 'Image')
# step3.track = t1
# file3= URI.open('https://www.romania-insider.com/sites/default/files/styles/article_large_image/public/2021-02/adobe_employees.jpg')
# step3.media.attach(io: file3, filename: 'image.jpeg', content_type: 'image/jpeg')
# step3.save!

step1 = Step.new(title: 'Team introduction', content_type: 'PDF')
step1.track = t2
step1.save

step2 = Step.new(title: 'How to be a great dev', content_type: 'Video')
step2.track = t2
step2.save

step3 = Step.new(title: 'Quiz', content_type: 'PDF')
step3.track = t2
step3.save

step1 = Step.new(title: 'Intro', content_type: 'PDF')
step1.track = t3
step1.save

step2 = Step.new(title: 'Leadership principles', content_type: 'Video')
step2.track = t3
step2.save

step1 = Step.new(title: 'Presenations skills', content_type: 'Video')
step1.track = t4
step1.save

step1 = Step.new(title: 'Strategy intro', content_type: 'PDF')
step1.track = t5
step1.save

step2 = Step.new(title: 'Sales targets', content_type: 'PDF')
step2.track = t5
step2.save

step3 = Step.new(title: 'Distribution network', content_type: 'PDF')
step3.track = t5
step3.save

step4 = Step.new(title: 'Pitch examples', content_type: 'PDF')
step4.track = t5
step4.save

step5 = Step.new(title: 'Upselling', content_type: 'PDF')
step5.track = t5
step5.save

step6 = Step.new(title: 'Losing a key account', content_type: 'Video')
step6.track = t5
step6.save

step1 = Step.new(title: 'Intro', content_type: 'PDF')
step1.track = t6
step1.save

step2 = Step.new(title: 'Leadership principles', content_type: 'Video')
step2.track = t6
step2.save

step3 = Step.new(title: 'Leading change efforts', content_type: 'Video')
step3.track = t6
step3.save

step1 = Step.new(title: 'Intro', content_type: 'PDF')
step1.track = t6
step1.save

step2 = Step.new(title: 'Leadership principles', content_type: 'Video')
step2.track = t6
step2.save

step3 = Step.new(title: 'Leading change efforts', content_type: 'Video')
step3.track = t6
step3.save

step1 = Step.new(title: 'Intro', content_type: 'PDF')
step1.track = t7
step1.save

step2 = Step.new(title: 'Leadership principles', content_type: 'Video')
step2.track = t7
step2.save

step3 = Step.new(title: 'Leading change efforts', content_type: 'Video')
step3.track = t7
step3.save

step1 = Step.new(title: 'Intro', content_type: 'PDF')
step1.track = t8
step1.save

step2 = Step.new(title: 'Leadership principles', content_type: 'Video')
step2.track = t8
step2.save

step3 = Step.new(title: 'Leading change efforts', content_type: 'Video')
step3.track = t8
step3.save

step3 = Step.new(title: 'Leading change efforts', content_type: 'Video')
step3.track = t4
step3.save

step3 = Step.new(title: 'Leading change efforts', content_type: 'Video')
step3.track = t4
step3.save

step3 = Step.new(title: 'Leading change efforts', content_type: 'Video')
step3.track = t9
step3.save

step3 = Step.new(title: 'Leading change efforts', content_type: 'Video')
step3.track = t9
step3.save

step3 = Step.new(title: 'Leading change efforts', content_type: 'Video')
step3.track = t9
step3.save

step3 = Step.new(title: 'Leading change efforts', content_type: 'Video')
step3.track = t9
step3.save

t1.save
t2.save
t3.save
t4.save
t5.save
t6.save
t7.save
t8.save

# a1 = Assignment.new
# a1.track = t1
# a1.user = u2
# a1.save

# a1.track.steps.each do |step|
#   StepScore.create(assignment: a1, step: step)
# end

a2 = Assignment.new
a2.track = t2
a2.user = u2
a2.save
a2.track.steps.each do |step|
  StepScore.create(assignment: a2, step: step)
end

a3 = Assignment.new
a3.track = t6
a3.user = u1
a3.save
a3.track.steps.each do |step|
  StepScore.create(assignment: a3, step: step)
end

a4 = Assignment.new
a4.track = t7
a4.user = u1
a4.save
a4.track.steps.each do |step|
  StepScore.create(assignment: a4, step: step)
end

a5 = Assignment.new
a5.track = t8
a5.user = u1
a5.save
a5.track.steps.each do |step|
  StepScore.create(assignment: a5, step: step)
end

# a6 = Assignment.new
# a6.track = t4
# a6.user = u2
# a6.save
# a6.track.steps.each do |step|
#   StepScore.create(assignment: a6, step: step)
# end

a7 = Assignment.new
a7.track = t9
a7.user = u2
a7.save
a7.track.steps.each do |step|
  StepScore.create(assignment: a7, step: step)
end

p 'Seeding ended...'
