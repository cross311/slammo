Slammo::Application.routes.draw do
   root 'home#spa'
   match '/next_bout', to: 'bout#next', via: [:get]
end
