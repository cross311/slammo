Slammo::Application.routes.draw do
  resources :fantasy_bout_scores

  resources :fantasy_bout_roostered_skaters

  resources :fantasy_team_skaters

  resources :fantasy_managers

  resources :skater_bout_scores

  resources :bouts

  resources :skaters

  resources :teams

   root 'home#spa'
end
