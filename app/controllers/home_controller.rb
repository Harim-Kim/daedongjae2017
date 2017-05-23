class HomeController < ApplicationController
  
  def index
  end
  
  def booth
    @jujeom_25 = Jujeom.where("day==25").order(:img_url)
    @popular = @jujeom_25.order(like: :desc).first(8)
    @unit_jujeom = Jujeom.where("day==25").select(:unit).uniq
  end
   
  
  def booth2
    @jujeom_26 = Jujeom.where("day==26").order(:img_url)
    @popular = @jujeom_26.order(like: :desc).first(8)
    @unit_jujeom_26 = Jujeom.where("day==26").select(:unit).uniq
 
  end
  def juju
    for i in 1...144
      a=Jujeom.find(i)
      if a.img_url==nil
        a.img_url="3.png"
      end
    end
  end
  
  def dbupload
  end
  
  def jujeomsave
    Jujeom.import(params[:csv_file])
    redirect_to '/home/dbupload', notice: "완료!"
  end
  
  def jujeomlike
    jujeom = Jujeom.find(params[:id])
    jujeom.like += 1
    jujeom.save
    if jujeom.day == "26"
      redirect_to '/home/booth2'
    else
      redirect_to '/home/booth'
    end
  end
  
  
  def backsave
    Back.import(params[:csv_file])
    redirect_to '/home/dbupload', notice: "완료!"
  end
  def performdaesave
    Performdae.import(params[:csv_file])
    redirect_to '/home/dbupload', notice: "완료!"
  end
  def performjungsave
    Performjung.import(params[:csv_file])
    redirect_to '/home/dbupload', notice: "완료!"
  end
  def partner
  end

  
  
  def ourevent
  end
 
  def event
    @all_back = Back.all
    @back_25 = Back.where("day==25")
    @unit_back_25 = Back.where("day==25").select(:unit).uniq
  end
  def event2
    @unit_back_26 = Back.where("day==26").select(:unit).uniq
    @back_26 = Back.where("day==26")

  end
  def performance
    @perfordae_25 = Performdae.where("date==25")
    @perfordae_26 = Performdae.where("date==26") 
    @performjung_25 = Performjung.where("date==25")
    @performjung_26 = Performjung.where("date==26")
  end
  
  def csv
  end
  
  def importpub
  end
  
  def importperform
  end

  def example
  end
end
