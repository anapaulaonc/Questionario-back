# require 'rails_helper'

# RSpec.describe "Users", type: :request do
#     describe 'POST users/' do
#         before { post users_path, params: params }
    
#         context 'with valid parameters' do
#           let(:params) do
#             attributes_for(:user)
#           end
    
#           it 'gets HTTP status 201(created)' do
#             expect(response).to have_http_status(:created)
#           end
    
#           it 'creates a new user' do
#             expect(User.count).to eq 1
#           end
    
#           it 'renders a JSON response with the new user' do
#             expect(response.content_type).to match(a_string_including('application/json'))
#           end
#         end
    
#         context 'with invalid parameters' do
#           let(:params) do
#             attributes_for(:user, email: nil)
#           end
    
#           it 'gets HTTP status 422(unprocessable_entity)' do
#             expect(response).to have_http_status(:unprocessable_entity)
#           end
    
#           it 'does not create a new user' do
#             expect(User.count).to eq 0
#           end
    
#           it 'renders a JSON response with errors for the new user' do
#             expect(response.content_type).to match(a_string_including('application/json'))
#           end
    
#           it 'receives the error details' do
#             expect(json_body).to eq(
#                                    { 'email' => ["Email não pode ficar em branco"] }
#                                  )
#           end
#         end
#       end
    
#       describe 'Requires authentication' do
#         context 'when logged in' do
#           let(:user) { create :user }
#           let(:token) { JsonWebToken.encode(user_id: user.id) }
#           let(:headers) { { 'Authorization' => "Bearer #{token}" } }
    
#           describe 'GET /users/:id' do
#             context 'with existing user' do
#               before { get user_url(user), headers: headers }
    
#               it 'gets HTTP status 200(ok)' do
#                 expect(response).to have_http_status(:ok)
#               end
    
#               it 'receives the user as JSON' do
#                 expect(response.body).to eq(user.to_json()) #possivel erro
#               end
#             end
    
#             context 'with nonexistent user' do
#               before { get user_url('2314323'), headers: headers }
    
#               it 'gets HTTP status 404(not found)' do
#                 expect(response).to have_http_status(:not_found)
#               end
    
#               it 'receives an error message' do
#                 expect(json_body['error']['message']).not_to be_nil
#               end
#             end
#           end
    
    
#           describe 'PATCH /users/:id' do
#             before do
#               patch user_url(user), params: params, headers: headers
#             end
    
#             context 'with valid parameters' do
#               let(:params) { { email: 'email@email.com' } }
    
#               it 'gets HTTP status 200(ok)' do
#                 expect(response).to have_http_status(:ok)
#               end
    
#               it 'receives the updated user' do
#                 expect(json_body['email']).to eq('email@email.com')
#               end
    
#               it 'updates the user in the database' do
#                 expect(User.first.email).to eq 'email@email.com'
#               end
#             end
    
    
#             context 'with invalid parameters' do
#               let(:params) { { email: '' } }
    
#               it 'gets HTTP status 422(unprocessable_entity)' do
#                 expect(response).to have_http_status(:unprocessable_entity)
#               end
    
#               it 'receives the error details' do
#                 expect(json_body).to eq(
#                                        { 'email' => ["Email não pode ficar em branco"] }
#                                      )
#               end
    
#               it 'does not add a user in the database' do
#                 expect(User.first.email).to eq user.email
#               end
#             end
#           end
    
    
    
#         end
#       end
    

# end
