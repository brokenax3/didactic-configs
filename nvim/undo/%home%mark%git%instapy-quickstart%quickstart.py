Vim�UnDo� �0���T@R0�Ox��ݮej��� ��1���      u    following_list = session.grab_following(username="sauu_kang", amount="full", live_match=True, store_locally=True)      ?                       `q    _�                            ����                                                                                                                                                                                                                                                                                                                                                             `u     �         %      insta_username = ''5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `u+     �         %      insta_password = ''�         %    5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             `x�     �      	       
   comments = ['Nice shot! @{}',   #        'I love your profile! @{}',   1        'Your feed is an inspiration :thumbsup:',   '        'Just incredible :open_mouth:',   '        'What camera did you use @{}?',           'Love your posts @{}',           'Looks awesome @{}',   &        'Getting inspired by you @{}',           ':raised_hands: Yes!',   /        'I can feel your passion @{} :muscle:']5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             `x�     �      	           5�_�                            ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y     �                   """ Activity flow """		     # general settings		   ?  session.set_dont_include(["friend1", "friend2", "friend3"])		          # activity		   -  session.like_by_tags(["natgeo"], amount=10)         # Joining Engagement Pods   5  session.set_do_comment(enabled=True, percentage=35)      session.set_comments(comments)   B  session.join_pods(topic='sports', engagement_mode='no_comments')5�_�                            ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y     �                  5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y>     �               5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y>     �               �               5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y@     �                6    follower_list = session.grab_followers("markk0508"5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `yB     �                 5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `yC     �                 ppopeye_followers = session.grab_followers(username="Popeye", amount="full", live_match=True, store_locally=True)5�_�                           ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `yE     �                 t    popeye_followers = session.grab_followers(username="Popeye", amount="full", live_match=True, store_locally=True)5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `yM     �                 q    follower_list = session.grab_followers(username="Popeye", amount="full", live_match=True, store_locally=True)5�_�                       #    ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y�     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y�     �               �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y�     �                 wlazySmurf_following = session.grab_following(username="lazy.smurf", amount="full", live_match=True, store_locally=True)5�_�                           ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y�     �                 {    lazySmurf_following = session.grab_following(username="lazy.smurf", amount="full", live_match=True, store_locally=True)5�_�                            ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y�     �                 5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y�     �                 v    following_list = session.grab_following(username="lazy.smurf", amount="full", live_match=True, store_locally=True)5�_�                       >    ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y�     �                     �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `y�     �                 \    following_not_follower = [ user for user in following_list if user not in follower_list]5�_�                       [    ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `zp    �                 [    following_not_follower = [user for user in following_list if user not in follower_list]5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `�u     �               t    follower_list = session.grab_followers(username="markk0508", amount="full", live_match=True, store_locally=True)5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `��     �               u    following_list = session.grab_following(username="markk0508", amount="full", live_match=True, store_locally=True)5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                          B       v   J    `��    �               l    following_list = session.grab_following(username="", amount="full", live_match=True, store_locally=True)�             5�_�                       >    ����                                                                                                                                                                                                                                                                                                                                                             `p�     �               t    follower_list = session.grab_followers(username="sauu_kang", amount="full", live_match=True, store_locally=True)5�_�                        ?    ����                                                                                                                                                                                                                                                                                                                                                             `q    �               u    following_list = session.grab_following(username="sauu_kang", amount="full", live_match=True, store_locally=True)5��