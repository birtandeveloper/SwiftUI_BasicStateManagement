import SwiftUI

struct StateChangeView: View {
    
    
    @State var title: String = "Title will Change According to State"
    @State var backgroundColor: Color = .red
    
    
    var body: some View { ZStack {
        
        backgroundColor.edgesIgnoringSafeArea(.all)
        
        VStack(spacing: 20) {
            
            Text(title).foregroundColor(.white)
            Button(action: {
                backgroundColor = .orange
                self.title = "Color State is Changed"
                               
            }, label: {
                Text("Color Orange".uppercased()).foregroundColor(.white).padding().background(backgroundColor.cornerRadius(10).shadow(radius: 10))
                
            })
            
            
            Button(action: {
                backgroundColor = .blue
                self.title = "Color State is Changed Again"
                               
            }, label: {
                Text("Color Blue".uppercased()).foregroundColor(.white).padding().background(backgroundColor.cornerRadius(10).shadow(radius: 10))
                
            })
        }
        
        
    }
        
        
    }
}


struct StateChangeView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        StateChangeView()
    }
