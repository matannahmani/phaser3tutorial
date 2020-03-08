class GameController < ApplicationController

  def show

  end

  def showbase
    unless checkparams
      # add more authorization here
      render json: { response: '200', arr: User.find(params[:id]).base_commands }
    else
      render json: { response: '500'}
    end
  end

  def updatebase
    unless checkparams
      # add more authorization here
      if params['base'].match? (/layer.putTilesAt\(buildings_type\['.+'\],\d+,\d+\);/) ## checking if the command matches our draw command
        user = User.find(params[:id].to_i)
        user.base_commands << params['base']
        user.save!
        render json: { response: '200'}
      else
        render json: {response: '500'}
      end
    else
      render json: { response: '500'}
    end
  end

    private

    def checkparams
      params[:id].to_i == 0 || !User.exists?(params[:id].to_i) # check params is number
    end
end
