import SwiftUI

struct Discussion: View{
    var body: some View{
        Rectangle()
            .scale(sqrt(2), anchor: .bottomLeading)
            .frame(width: 380, height: 200)
            .foregroundColor(.white).border(.black)
            .clipped().offset(y:-40)
        Text("r/SpecialSkills").underline().offset(x:-130,y:-120).font(.system(size: 15)).font(.subheadline)
        Text("* 3h").offset(x:-60,y:-120).font(.system(size: 15)).foregroundColor(.gray)
        Text("Window Cleaning Needed!!!").font(.headline).offset(x:70,y:-120)
        Text("Hello everyone, I own a small local taco joint and I'm having some extra food to share if someone could help with cleaning the exterior windows on our restaurant.I'm on a small budget and the job shouldn't take very long as it is only a small place with a few windows. I would be happy to cater or feed a team of people in exchange.").frame(maxWidth: 360).font(.system(size: 15)).offset(y:-35)
        Text("Reply").font(.system(size: 15)).foregroundColor(.gray).offset(x:145,y:40)
    }
}

struct CompanyView: View {
    var body: some View {
        CompanyPage()
    }
}
struct RecentVisits: View{
    var body: some View{
        Discussion()
        ZStack{
            Text("Recent Visits").foregroundColor(.teal).frame(width:350, height: 550, alignment: .topLeading).font(.system(size: 15).weight(.bold))
            HStack(alignment: .top) {
                
                NavigationLink(destination: CompanyView()) {
                    Image(systemName: "sun.max.circle").font(.system(size:55)).foregroundColor(.black).offset(y: -215)
                }
                NavigationLink(destination: CompanyView()) {
                    Image(systemName: "iphone.homebutton.circle").font(.system(size:55)).foregroundColor(.black).offset(y: -215)
                }
                NavigationLink(destination: CompanyView()) {
                    Image(systemName: "figure.walk.circle").font(.system(size:55)).foregroundColor(.black).offset(y: -215)
                }
                NavigationLink(destination: CompanyView()) {
                    Image(systemName: "car.circle").font(.system(size:55)).foregroundColor(.black).offset(y: -215)
                }
                NavigationLink(destination: CompanyView()) {
                    Image(systemName: "plus.circle").font(.system(size:55)).foregroundColor(.black).offset(y: -215)
                }
            }
        }
    }
}

struct ExplorePage: View {
    var body: some View {
        RecentVisits().offset(y:-20)
        ScrollView(.horizontal, showsIndicators: true, content: {
            Spacer()
            
            HStack{
                Spacer()
                NavigationLink(destination: CompanyView()) {
                    Image("Logo")
                        .resizable()
                        .frame(width: 170, height: 220)
                        .clipShape(Rectangle())
                        .shadow(color: .white, radius: 10).cornerRadius(30)
                }
                NavigationLink(destination: CompanyView()) {
                    Image("Door")
                        .resizable()
                        .frame(width: 170, height: 220)
                        .clipShape(Rectangle())
                        .shadow(color: .white, radius: 10).cornerRadius(30)
                }
                NavigationLink(destination: CompanyView()) {
                    Image("FoodCater")
                        .resizable()
                        .frame(width: 170, height: 220)
                        .clipShape(Rectangle())
                        .shadow(color: .white, radius: 10).cornerRadius(30)
                }
                NavigationLink(destination: CompanyView()) {
                    Image("Advertisement")
                        .resizable()
                        .frame(width: 170, height: 220)
                        .clipShape(Rectangle())
                        .shadow(color: .white, radius: 10).cornerRadius(30)
                }
                NavigationLink(destination: CompanyView()) {
                    Image("Window")
                        .resizable()
                        .frame(width: 170, height: 220)
                        .clipShape(Rectangle())
                        .shadow(color: .white, radius: 10).cornerRadius(30)
                }
                NavigationLink(destination: CompanyView()) {
                    Image("Hair")
                        .resizable()
                        .frame(width: 170, height: 220)
                        .clipShape(Rectangle())
                        .shadow(color: .white, radius: 10).cornerRadius(30)
                        
                }
            }
    })
        }
    }

struct ExplorePage_Previews: PreviewProvider {
    static var previews: some View {
        ExplorePage()
    }
}
