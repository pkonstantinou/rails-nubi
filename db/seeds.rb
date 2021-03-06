require "open-uri"

p 'Seeding started...'

u1 = User.new(email: 'tom@nubiapp.co', password: '123456')
u1.first_name = 'Tom'
u1.last_name = 'Louwagie'
u1.save

u2 = User.new(email: 'paschalis@nubiapp.co', password: '123456')
u2.first_name = 'Paschalis'
u1.last_name = 'Konstantinou'
u2.manager = u1
u2.save

t1 = Track.new(title: 'New employee training')
t1.user = u1
t2 = Track.new(title: 'Junior Software Engineer')
t2.user = u1
t3 = Track.new(title: 'New manager training')
t3.user = u1
t4 = Track.new(title: 'Presentations skill')
t4.user = u2
t5 = Track.new(title: 'Sales strategy')
t5.user = u2

step1 = Step.new(title: 'Code of conduct', content_type: 'PDF')
step1.track = t1
file1 = URI.open('https://www.total.com/sites/g/files/nytnzq111/files/atoms/files/code_de_conduite_en_0.pdf')
step1.media.attach(io: file1, filename: 'total.pdf', content_type: 'total/pdf')
step1.save!

step2 = Step.new(title: 'Safety introduction', content_type: 'Video')
step2.track = t1
file2 = URI.open('https://total-mc29-videos-pad.damdy.com/mc29/20170427-161047-6385a00d/media_mp4_HD_1080p_5.mp4')
step2.media.attach(io: file2, filename: 'video.mp4', content_type: 'video/mp4')
step2.save!

# step3 = Step.new(title: 'Team introduction', content_type: 'Image')
# step3.track = t1
# file3= URI.open('https://www.achievers.com/blog/wp-content/uploads/2030/08/banner-42.jpg')
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
