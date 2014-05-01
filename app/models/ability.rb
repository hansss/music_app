class Ability
  include CanCan::Ability

  def initialize(artist)
    # Define abilities for the passed in user here. For example:
    #
      artist ||= Artist.new # guest user (not logged in)
      if artist.role == "admin"
        can :manage, :all
      else
        can :read, Artist
        # can :read, Song
        can :create, Artist
        can :manage, Artist, id: artist.id
        # can :create, Song, artist_id: artist.id
        can :manage, Song, artist_id: artist.id
        can :create, Comment
        can :manage, Comment, artist_id: artist.id
        can :destroy, Comment, song: {artist_id: artist.id}
      end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
