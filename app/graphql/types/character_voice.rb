class Types::CharacterVoice < Types::BaseObject
  description 'Information about a VA (Person) voicing a Character in a Media'

  # Identifiers
  field :id, ID, null: false

  field :mediaCharacter, Types::MediaCharacter,
    null: false,
    description: 'The MediaCharacter node'

  field :person, Types::Person,
    null: false,
    description: 'The person who voice acted this role'

  field :locale, String,
    null: false,
    description: 'The BCP47 locale tag for the voice acting role'

  field :licensor, Types::Producer,
    null: true,
    description: 'The company who hired this voice actor to play this role'
end
