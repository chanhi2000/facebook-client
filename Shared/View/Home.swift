//
//  Home.swift
//  facebook-client
//
//  Created by chlee on 2020/12/26.
//

import SwiftUI
import SDWebImageSwiftUI

struct Home: View {
    var screen = NSScreen.main!.visibleFrame
    @State var selected = "house.fill"
    @Namespace var animation
        
    var body: some View {
        VStack {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom))  {
                HStack(spacing: 8) {
                    Text("facebook")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("fb"))
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack {
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 35, height: 35)
                                .clipShape(Circle())
                            Text("Chan Lee")
                                .foregroundColor(.black)
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 16, weight:.bold))
                            .foregroundColor(.black)
                            .padding(10)
                            .background(Color.gray.opacity(0.2))
                            .clipShape(Circle())
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: {}, label: {
                        Image("messenger")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(10)
                            .background(Color.gray.opacity(0.2))
                            .foregroundColor(Color("fb"))
                            .clipShape(Circle())
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.vertical)
                .padding(.leading, 10)
                .padding(.trailing)
                .padding(.top, 12)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                
                // Tab View...
                HStack {
                    TabButton(image: "house.fill", selected: $selected, animation: animation)
                    TabButton(image: "play.tv", selected: $selected, animation: animation)
                    TabButton(image: "person.circle", selected: $selected, animation: animation)
                    TabButton(image: "person.3.fill", selected: $selected, animation: animation)
                    TabButton(image: "bell", selected: $selected, animation: animation)
                    TabButton(image: "line.horizontal.3", selected: $selected, animation: animation)
                }
            }
            
            HStack {
                // Side Tabs View
                SideTabView()
                
                // Post View...
                PostView()
                
                // Side Contact Views...
                ContactView()
            }
            .frame(maxHeight:.infinity)
            
            
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen.width / 1.4, height: screen.height - 60)
        .background(Color("bg"))
        .preferredColorScheme(.light)
    }
}

struct TabButton: View {
    var image: String
    @Binding var selected : String
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation {selected = image}
        }, label: {
            VStack(spacing:0) {
                Image(systemName: image)
                    .font(.title)
                    .foregroundColor(selected == image ? Color("fb") : Color.gray.opacity(0.7))
                    .frame(height: 40)
                ZStack {
                    Capsule()
                        .fill(Color.clear)
                        .frame(width: 65, height: 3)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                    
                    if selected == image {
                        Capsule()
                            .fill(Color("fb"))
                            .frame(width: 65, height: 3)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                }
            }
        })
        .buttonStyle(PlainButtonStyle())
    }
}

struct SideTabButton: View {
    var image: String
    var title: String
    var color: String
    var isSystem: Bool
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(spacing: 8) {
                if isSystem {
                    Image(systemName: image)
                        .font(.system(size: 20))
                        .foregroundColor(Color(color))
                        .frame(width: 25, height: 25)
                } else {
                    Image(image)
                        .resizable()
                        .renderingMode(color == "" ? .original : .template)
                        .foregroundColor(Color(color))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                }
                Text(title)
                    .foregroundColor(.black)
                
            }
            .padding(.horizontal)
        })
        .buttonStyle(PlainButtonStyle())
        .frame(maxWidth:.infinity, alignment: .leading)
    }
}

struct SideTabView: View {
    var screen = NSScreen.main!.visibleFrame
    var body: some View {
        VStack(spacing: 18) {
            // Contact Buttons ...
            SideTabButton(image: "logo", title: "Chan Lee", color: "", isSystem: false)
                .padding(.top, 20)
            SideTabButton(image: "shield.checkerboard", title: "Covid 19 Info Center", color: "covid", isSystem: true)
            SideTabButton(image: "person.2.fill", title: "Friends", color: "fb", isSystem: true)
            SideTabButton(image: "messenger", title: "Messenger", color: "fb", isSystem: false)
            SideTabButton(image: "flag.fill", title: "Pages", color: "pages", isSystem: true)
            SideTabButton(image: "shop", title: "Market Place", color: "fb", isSystem: false)
            SideTabButton(image: "play.tv", title: "Watch", color: "fb", isSystem: true)
            SideTabButton(image: "calendar", title: "Events", color: "events", isSystem: true)
            Spacer()
        }
        .frame(maxWidth: (screen.width / 1.8) / 4, maxHeight: .infinity)
    }
}

struct ContactView: View {
    var screen = NSScreen.main!.visibleFrame
    var body: some View {
        VStack {
            HStack {
                Text("Contacts")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                })
                .buttonStyle(PlainButtonStyle())
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "slider.vertical.3")
                        .foregroundColor(.gray)
                })
                .buttonStyle(PlainButtonStyle())
            }
            .padding()
            
            ScrollView {
                ForEach(users) { user in
                    HStack {
                        WebImage(url: URL(string: user.url)!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                        Text(user.name)
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                }
            }
            
            
        }
        .frame(maxWidth: (screen.width / 1.8) / 4, maxHeight: .infinity)
    }
}

struct PostView: View {
    var screen = NSScreen.main!.visibleFrame
    
    @State var post = ""
    
    var body: some View {
        ScrollView {
            VStack {
                
                // My Post View
                VStack {
                    HStack {
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                        TextField("What's in your mind?", text: $post)
                            .textFieldStyle(PlainTextFieldStyle())
                    }
                    
                    Divider()
                    
                    HStack {
                        Button(action: {}, label: {
                            Label(
                                title: {
                                    Text("Live")
                                        .foregroundColor(.black)
                                },
                                icon: { Image(systemName: "video.fill")
                                    .foregroundColor(.red)
                                }
                            )
                            .frame(maxWidth: .infinity)
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        Divider()
                            .padding(.vertical, -5)
                        
                        Button(action: {}, label: {
                            Label(
                                title: {
                                    Text("Photos")
                                        .foregroundColor(.black)
                                },
                                icon: { Image(systemName: "photo.on.rectangle")
                                    .foregroundColor(.green)
                                }
                            )
                            .frame(maxWidth: .infinity)
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        Divider()
                            .padding(.vertical, -5)
                        
                        Button(action: {}, label: {
                            Label(
                                title: {
                                    Text("Room")
                                        .foregroundColor(.black)
                                },
                                icon: { Image(systemName: "video.fill.badge.plus")
                                    .foregroundColor(.purple)
                                }
                            )
                            .frame(maxWidth: .infinity)
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Label(
                                title: {
                                    Text("Create Room")
                                },
                                icon: {
                                    Image(systemName: "video.badge.plus")
                                        .foregroundColor(.purple)
                                }
                            )
                            .padding(10)
                            .background(Capsule().strokeBorder(Color.purple))
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        ForEach(users) { user in
                            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                                WebImage(url: URL(string: user.url)!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 35, height: 35)
                                    .clipShape(Circle())
                                
                                Circle()
                                    .fill(Color.green)
                                    .frame(width: 10, height: 10)
                            })
                        }
                    }
                    .padding()
                })
                .background(Color.white)
                .cornerRadius(10)
                
                ForEach(posts) { post in
                    
                    // Post View ...
                    PostCardView(post: post)
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct PostCardView: View {
    var post: Post
    var body: some View {
        VStack {
            HStack {
                WebImage(url: URL(string: post.user.url)!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 5, content: {
                    Text(post.user.name)
                        .foregroundColor(.black)
                    HStack(spacing:5) {
                        Text(post.postTime)
                            .foregroundColor(.gray)
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 3, height: 3)
                        Image(systemName: "globe")
                            .foregroundColor(.gray)
                    }
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("more")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                        .foregroundColor(.black)
                })
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.horizontal, 10)
            
            Text(post.title)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 10)
            
            WebImage(url: URL(string: post.imageUrl)!)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack {
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(Color("fb"))
                Text("\(post.likes)")
                
                Spacer()
                
                Text("\(post.comments) Comments")
                    .foregroundColor(.gray)
                    
                Text("\(post.shares) Shares")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 10)
            .padding(.top, 5)
            
            Divider()
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Label(
                        title: {
                            Text("Like")
                                .foregroundColor(.gray)
                        },
                        icon: { Image(systemName: "hand.thumbsup")
                            .foregroundColor(.gray)
                        }
                    )
                    .frame(maxWidth: .infinity)
                })
                .buttonStyle(PlainButtonStyle())
                
                Divider()
                    .padding(.vertical, -5)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Label(
                        title: {
                            Text("Comment")
                                .foregroundColor(.gray)
                        },
                        icon: { Image(systemName: "arrow.up.message")
                            .foregroundColor(.gray)
                        }
                    )
                    .frame(maxWidth: .infinity)
                })
                .buttonStyle(PlainButtonStyle())
                
                Divider()
                    .padding(.vertical, -5)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Label(
                        title: {
                            Text("Share")
                                .foregroundColor(.gray)
                        },
                        icon: { Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.gray)
                        }
                    )
                    .frame(maxWidth: .infinity)
                })
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.horizontal, 10)
            .padding(.top, 10)
            
        }
        .padding(.vertical)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
