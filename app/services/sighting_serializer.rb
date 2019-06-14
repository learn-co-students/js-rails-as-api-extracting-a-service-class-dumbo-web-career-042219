class SightingSerializer

    def initialize(sighting_object)
        @sighting = sighting_object
    end

    # OPTION 1
    # def to_serialized_json
    #     @sighting.to_json(:include => {
    #         :bird => {:only => [:name, :species]},
    #         :location => {:only [:longitude, :latitude]}
    #     }, :except => [:updated_at])
    # end

    #OPTION 2
    def to_serialized_json
        options = {
            include: {
                bird: {
                    only: [:name, :species]
                },
                location: {
                    only: [:longitude, :latitude]
                }
            },
            except: [:updated_at],
        }
        @sighting.to_json(options)
    end



end