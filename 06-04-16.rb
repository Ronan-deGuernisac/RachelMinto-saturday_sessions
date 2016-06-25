
class House

  def self.recite
    rhyme = ''
    previous = pieces.last[0] + ".\n"
    rhyme << "This is " + previous

    counter = pieces.length - 2
    while counter > 0
      rhyme << "\nThis is " + pieces[counter][0] + ' '
      rhyme << "\n" + pieces[counter][1] + ' ' + previous
      previous = pieces[counter][0] + "\n" + pieces[counter][1] + ' ' + previous
      counter -= 1
    end
    rhyme
  end

  private

  def self.pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built']
    ]
  end
end

puts House.recite