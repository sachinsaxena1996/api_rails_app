module API
  module V1
    class Consumers < Grape::API    
      prefix  'api'
      version 'v1',using: :accept_version_header

      resource :consumers do          
        desc "Return all transactions of a consumer"
	      get ':id/transactions' do
        	consumers_tran = Transaction.where(consumer_id: params[:id])          
          if consumers_tran.present?            
				     consumers_tran.to_a
          else
             ["No Records Found for consumer with id #{params[:id]}"].as_json              						  
          end
        end
        													
			  desc "updates consumer record"
			  put ':id' do
				  consumers_rec = Consumer.where(id: params[:id]).first
				  if (consumers_rec.present?)
					  consumers_rec.first_name = params[:first_name] if params[:first_name].present?
            consumers_rec.last_name = params[:last_name] if params[:last_name].present?
            if consumers_rec.save
              ["Consumer record with id: #{params[:id]} updated successfully."].as_json
            else
              ["Consumer record with id: #{params[:id]} not updated."].as_json
            end
          else
            ["Invalid Consumer id #{params[:id]}"].as_json              						  
				  end				  			
			  end

        desc "creates consumer record"
			  post  do
				  consumers_rec = Consumer.new(first_name: params[:first_name], last_name: params[:last_name])
          if consumers_rec.save
            ["Consumer record created successfully."].as_json
          else
            ["Consumer record not created."].as_json
          end             						  			
			  end
			end				
		end
	end
end
  


