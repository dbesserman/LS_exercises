require 'pry'


NOUNS = %w(iCroissant Fall Hell Honeybee Impudence Jeff Tomography)
VERBS = %w(dream extend develop warm travel hate prevent deliver found type pause complete)
ADJECTIVES = %w(windy blushing jumbled closed bouncy flagrant bitter average fertile fortunate sore warm)
ADVERBS = %w(forth officially nervously upwardly absentmindedly vaguely joyously triumphantly delightfully abnormally openly quicker)

File.open('lib.txt') do |file|
  file.each do |line|
    puts format(line, noun: NOUNS.sample,
                      verb: VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb: ADVERBS.sample )
  end
end
