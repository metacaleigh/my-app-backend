class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

# READ:

  # Get All Quotes (GOOD)
  get '/quotes' do
    quotes = Quote.all
    quotes.to_json
  end

  # Get RANDOM Quote w/ Queen (GOOD)
  get '/quotes/get_random_quote' do
    Quote.get_random_quote.to_json(include: :queen)
  end

  # Get All Queens (GOOD)
  get '/queens' do
    queens = Queen.all
    queens.to_json
  end

  # Get Individual Queen's Most Popular Quote, All Quotes (GOOD)
  get '/queens/:id' do
    this_queen = Queen.find(params[:id])
    those_quotes = this_queen.quotes.order(claps: :desc)
    queen_data = {
      **this_queen.attributes,
      quotes: those_quotes[1..],
      most_popular_quote: this_queen.most_popular_quote
      }
      queen_data.to_json
    end
  end

# CREATE:

  # Create a New Queen

  # post '/queens' do
  #   newQueen = Queen.create(name: params[:qname], sun_sign: params[:sun_sign], winner?: params[:winner?], season: params[:season], hometown: params[:hometown], image_url: params[:image_url], user_added?: params[:user_added])
  #   newQueen.to_json
  # end

  post '/queens' do
    "Hello World"
  end

  # Create a New Quote

  # post '/quotes' do
  #   newQuote = Quote.create()
  # end

# UPDATE:
  
# Update a Quote (GOOD ?)
  patch '/quotes/:id' do
    quote = Quote.find(params[:id])
    quote.update(quote: params[:quote])
    quote.to_json
  end



# DELETE:

  # Delete a Quote
  delete '/quotes/:id' do
    quote = Quote.find(params[:id])
    # if quote.user_added? == true
    quote.destroy
  end



  # Get a Single Queen, Most Popular Quote, and All Quotes()

  # Get a Single Quote (GOOD)
  # get '/quotes/:id' do
  #   quote = Quote.find(params[:id])
  #   quote.to_json
  # end

  # Get All Quotes for an Individual Queen
  # get '/quotes/queen/:queen_id' do
  #   quotes = Quote.where(queen_id: params[:queen_id])
  #   quotes.to_json
  # end
