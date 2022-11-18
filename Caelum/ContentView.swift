//
//  ContentView.swift
//  Caelum
//
//  Created by Ali Hamoud on 11/14/22.
//

import SwiftUI
import RealityKit


//testing commit
extension View {
    // this allows you to add .navigate(to: , when: ) to a view when you want to switch to another view
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MonthView : View{
    var monthBox: some View{
        Button{}label: {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 45, height: 45)
                .foregroundColor(Color("MainColor"))
        }
    }
    var body: some View{
        HStack{
            monthBox
                .overlay(
                    Text("Jan")
                        .font(.custom("SFPro", fixedSize: 15))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 0, y: -8)
                        .opacity(1.0)
                )
            monthBox
                .overlay(
                    Text("Feb")
                        .font(.custom("SFPro", fixedSize: 15))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 0, y: -8)
                        .opacity(1.0)
                )
            monthBox
                .overlay(
                    Text("Mar")
                        .font(.custom("SFPro", fixedSize: 15))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 0, y: -8)
                        .opacity(1.0)
                )
            monthBox
                .overlay(
                    Text("Apr")
                        .font(.custom("SFPro", fixedSize: 15))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 0, y: -8)
                        .opacity(1.0)
                )
            monthBox
                .overlay(
                    Text("May")
                        .font(.custom("SFPro", fixedSize: 15))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 0, y: -8)
                        .opacity(1.0)
                )
            monthBox
                .overlay(
                    Text("Jun")
                        .font(.custom("SFPro", fixedSize: 15))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 0, y: -8)
                        .opacity(1.0)
                )
            monthBox
                .overlay(
                    Text("July")
                        .font(.custom("SFPro", fixedSize: 15))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 0, y: -8)
                        .opacity(1.0)
                )
            monthBox
                .overlay(
                    Text("Aug")
                        .font(.custom("SFPro", fixedSize: 15))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 0, y: -8)
                        .opacity(1.0)
                )
        }
    }
}


struct JournalEntry : View{
    @State private var journalEntry = ""
    @State private var editTab = false
    
    var editTabPopup: some View{
        VStack{
            Button{
 
            }label: {
                Image(systemName: "arrow.uturn.backward")
                    .foregroundColor(Color("MainColor"))
                    .scaleEffect(1.6)
                    
            }.offset(y: -95)
            Button{}label: {
                Image(systemName: "arrow.uturn.forward")
                    .foregroundColor(Color("MainColor"))
                    .scaleEffect(1.6)
                    
            }.offset(y: -80)
            Button{}label: {
                Image(systemName: "doc.on.clipboard")
                    .foregroundColor(Color("MainColor"))
                    .scaleEffect(1.6)
                    
            }.offset(y: -65)
            Button{}label: {
                Image(systemName: "textformat.alt")
                    .foregroundColor(Color("MainColor"))
                    .scaleEffect(1.6)
                    
            }.offset(y: -48)
            Button{}label: {
                Image(systemName: "camera")
                    .foregroundColor(Color("MainColor"))
                    .scaleEffect(1.6)
                    
            }.offset(y: -35)
            
        }
    }
    
    var body: some View {
        // this is a popup window
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color("AppColor"))
                .frame(width: 850, height: 900)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .foregroundColor(Color("SecondColor"))
                        .frame(width: 450, height: 60)
                        .offset(x: 0, y: -348)
                )
            HStack(){
                Text("Monday, July 7, 2022")
                    .foregroundColor(Color("MainColor"))
                    .font(.custom("SFPro", fixedSize: 16))
                    .bold()
                    .offset(x: -65,y: -355)
                
                Menu{
                    Button{}label:{Text("Option 1")}
                    Button{}label:{Text("Option 2")}
                    Button{}label:{Text("Option 3")}
                }label:{
                    Image(systemName: "ellipsis.rectangle")
                        .scaleEffect(1.2)
                        .foregroundColor(Color("MainColor"))
                        
                }.offset(x: 50, y: -355)
                
                Button{
                    //showingPopup.toggle()
                }label:{
                    Text("Done")
                        .foregroundColor(Color("MainColor"))
                        .font(.custom("SFPro", fixedSize: 16))
                        .bold()
                        
                }.offset(x: 55, y: -355)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 350, height: 600)
                    .foregroundColor(Color("SecondColor"))
                    .shadow(radius: 4)
            )
            .overlay(
                Text("My Experience 💫")
                    .foregroundColor(Color("MainColor"))
                    .font(.custom("SFPro", fixedSize: 20))
                    .position(x: 45, y: -270)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .frame(width: 350, height: 1)
                    .position(x: 114, y: -250)
                    .foregroundColor(Color("MainColor"))
                    
            )
            .overlay(
                ScrollView{
                    VStack{
                        Text("Clear skies made for a good experience today. I went out to the Headlands dark sky park to do some stargazing, and the stars were on full display. Especially bright was the north star. Being able to really pick out and identify so many constellations was a treat. Fortunately, there was no moon today, so light pollution was at a minimum. I think my next trip will be to see the northern lights. Being able to see the amazing things in the sky just akes me want to see more of what our galaxy has to offer.")
                            .disableAutocorrection(true)
                            
                            .foregroundColor(Color("MainColor"))
                            .font(.custom("SFPro", fixedSize: 14))
                            //.padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                            
                    }.padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                        
                }.frame(width: 350, height: 350)
                    .offset(y: -80)
            )
            .overlay(
                Button{
                    withAnimation(.easeInOut(duration: 0.2)){
                        editTab.toggle()
                    }
                    
                } label:{
                    Image(systemName: "plus.circle")
                        .foregroundColor(Color("MainColor"))
                        .scaleEffect(1.6)
                }.offset(x: 140, y: 260)
            )
            .overlay(
                editTabPopup.offset(x: 140, y: 210)
                    .opacity(editTab ? 1.0 : 0.0)
            )
            
        }
    }
}


struct NewJournalEntry : View{
    @State private var journalEntry = ""
    @State private var editTab = false
    
    var editTabPopup: some View{
        VStack{
            Button{}label: {
                Image(systemName: "arrow.uturn.backward")
                    .foregroundColor(Color("MainColor"))
                    .scaleEffect(1.6)
                    
            }.offset(y: -95)
            Button{}label: {
                Image(systemName: "arrow.uturn.forward")
                    .foregroundColor(Color("MainColor"))
                    .scaleEffect(1.6)
                    
            }.offset(y: -80)
            Button{}label: {
                Image(systemName: "doc.on.clipboard")
                    .foregroundColor(Color("MainColor"))
                    .scaleEffect(1.6)
                    
            }.offset(y: -65)
            Button{}label: {
                Image(systemName: "textformat.alt")
                    .foregroundColor(Color("MainColor"))
                    .scaleEffect(1.6)
                    
            }.offset(y: -48)
            Button{}label: {
                Image(systemName: "camera")
                    .foregroundColor(Color("MainColor"))
                    .scaleEffect(1.6)
                    
            }.offset(y: -35)
            
        }
    }
    
    var body: some View {
        // this is a popup window
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color("AppColor"))
                .frame(width: 850, height: 900)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .foregroundColor(Color("SecondColor"))
                        .frame(width: 450, height: 60)
                        .offset(x: 0, y: -348)
                )
            HStack(){
                Text("Friday, July 30, 2022")
                    .foregroundColor(Color("MainColor"))
                    .font(.custom("SFPro", fixedSize: 16))
                    .bold()
                    .offset(x: -65,y: -355)
                
                Menu{
                    Button{}label:{Text("Option 1")}
                    Button{}label:{Text("Option 2")}
                    Button{}label:{Text("Option 3")}
                }label:{
                    Image(systemName: "ellipsis.rectangle")
                        .scaleEffect(1.2)
                        .foregroundColor(Color("MainColor"))
                        
                }.offset(x: 50, y: -355)
                
                Button{
                    //showingPopup.toggle()
                }label:{
                    Text("Done")
                        .foregroundColor(Color("MainColor"))
                        .font(.custom("SFPro", fixedSize: 16))
                        .bold()
                        
                }.offset(x: 55, y: -355)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 350, height: 600)
                    .foregroundColor(Color("SecondColor"))
                    .shadow(radius: 4)
            )
            .overlay(
                Text("My Experience 💫")
                    .foregroundColor(Color("MainColor"))
                    .font(.custom("SFPro", fixedSize: 20))
                    .position(x: 45, y: -270)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .frame(width: 350, height: 1)
                    .position(x: 114, y: -250)
                    .foregroundColor(Color("MainColor"))
                    
            )
            .overlay(
                ScrollView{
                    VStack{
                        
                        TextField("Record your experience!", text: $journalEntry)
                        //journalEntry = $journalEntry
                            .disableAutocorrection(false)
                            .lineLimit(10)
                            .foregroundColor(Color("MainColor"))
                            .font(.custom("SFPro", fixedSize: 14))
                            //.padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                            
                    }.padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                        
                }.frame(width: 350, height: 350)
                    .offset(y: -80)
            )
            .overlay(
                Button{
                    withAnimation(.easeInOut(duration: 0.2)){
                        editTab.toggle()
                    }
                    
                } label:{
                    Image(systemName: "plus.circle")
                        .foregroundColor(Color("MainColor"))
                        .scaleEffect(1.6)
                }.offset(x: 140, y: 260)
            )
            .overlay(
                editTabPopup.offset(x: 140, y: 210)
                    .opacity(editTab ? 1.0 : 0.0)
            )
            
        }
    }
}



struct ContentView : View {
    @State private var DarkSkySel = false
    @State private var JournalSel = false
    @State private var SelectedTab = 2
    @State private var tab0 = "sparkles"
    @State private var tab1 = "telescope"
    @State private var progress: Double = 0.0
    @State private var showingNewEntry = false
    @State private var showingPopup = false
    @FocusState private var keyboardFocused: Bool

    //@State private var loaded = false

    
    var addJournal: some View{
        Button{
            
        }label:{
            RoundedRectangle(cornerRadius: 8)
                //.padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                .frame(width: 36, height: 36)
                .foregroundColor(Color("MainColor"))
                .overlay(
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        //.scaleEffect()
                )
        }
    }
    
    var journalButton: some View{
        Button{
            showingNewEntry.toggle()
        }label: {
            RoundedRectangle(cornerRadius: 16)
                .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                .frame(width: 180, height: 118)
                .foregroundColor(Color("MainColor"))
                .overlay(
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .scaleEffect(2)
                )
        }
    }
    
    
    
    
    var body: some View { //main code
        return TabView(selection: $SelectedTab){
            
            // Each ZStack shown is another window
            // tab for dark sky map
            ZStack{
                
                Text("Hi")
                    .foregroundColor(.cyan)
            }.tabItem({
                Text("Dark Sky Map")
                Image(systemName: "1.circle")
            }).tag(0)
                .background(Color("AppColor"))
            
            // tab for star chart
            ZStack{ // page 2
                
                // Star Chart View
                ARViewContainer()//.ignoresSafeArea()
                    .overlay(
                        Button{
                            // does stuff
                            
                        }label: {
                            Image("eyeIcon")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundColor(Color.purple)
                                .frame(width: 32, height: 32)
                            .position(x: 368, y: 25)
                        }
                    )
                    .overlay(
                        Button {
                        }label: {
                            Image("touchIcon")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(Color.purple)
                            .frame(width: 32, height: 32)
                            .position(x: 370, y: 75)
                        }
                        
                    )
            }.tabItem({
                Text("Star Chart")
                Image(systemName: "sparkles")
                    .foregroundColor(Color.purple)
            }).tag(1)
                .background(Color("AppColor"))
            
            // tab for journal
            VStack{
                let columns: [GridItem] = Array(repeating: .init(.flexible(minimum: 0, maximum: 400)), count: 2)
                
                //the month in view
                ScrollView(.horizontal, showsIndicators: false){
                    
                    MonthView()
                    
                }.padding(EdgeInsets(top: 50, leading: 10, bottom: 0, trailing: 10))
                    .overlay(
                        addJournal
                            .position(x: 360, y: 15)
                    )
                 // the journal entires
                ScrollView(showsIndicators: false){
                    LazyVGrid(columns: columns, alignment: .center, spacing: 8.0){
                        Button{
                            // open journal
                            showingPopup.toggle()
                            
                        }label:{
                            Image("nightsky1")
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: 180, height: 118)
                                .overlay(
                                    Text("7")
                                        .font(.custom("SFPro", fixedSize: 35))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 5)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                                .overlay(
                                    Text("July")
                                        .font(.custom("SFPro", fixedSize: 15))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 30)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                        }
                        
                        .popover(isPresented: $showingPopup){
                            // this is a popup window
                            JournalEntry()
                        }
                        
                            
                        
                        Button{
                            // open journal
                            
                        }label:{
                            Image("nightsky2")
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: 180, height: 118)
                                .overlay(
                                    Text("12")
                                        .font(.custom("SFPro", fixedSize: 35))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 5)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                                .overlay(
                                    Text("July")
                                        .font(.custom("SFPro", fixedSize: 15))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 30)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                        }
                        Button{
                            // open journal
                            
                            
                        }label:{
                            Image("nightsky3")
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: 180, height: 118)
                                .overlay(
                                    Text("17")
                                        .font(.custom("SFPro", fixedSize: 35))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 5)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                                .overlay(
                                    Text("July")
                                        .font(.custom("SFPro", fixedSize: 15))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 30)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                        }
                        Button{
                            // open journal
                            
                        }label:{
                            Image("nightsky4")
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: 180, height: 118)
                                .overlay(
                                    Text("18")
                                        .font(.custom("SFPro", fixedSize: 35))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 5)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                                .overlay(
                                    Text("July")
                                        .font(.custom("SFPro", fixedSize: 15))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 30)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                        }
                        Button{
                            // open journal
                            
                        }label:{
                            Image("nightsky5")
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: 180, height: 118)
                                .overlay(
                                    Text("24")
                                        .font(.custom("SFPro", fixedSize: 35))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 5)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                                .overlay(
                                    Text("July")
                                        .font(.custom("SFPro", fixedSize: 15))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 30)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                        }
                        Button{
                            // open journal
                            
                        }label:{
                            Image("nightsky6")
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .frame(width: 180, height: 118)
                                .overlay(
                                    Text("27")
                                        .font(.custom("SFPro", fixedSize: 35))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 5)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                                .overlay(
                                    Text("July")
                                        .font(.custom("SFPro", fixedSize: 15))
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 30)
                                        .opacity(0.7)
                                        .shadow(radius: 2)
                                )
                        }
                        journalButton.popover(isPresented: $showingNewEntry){
                            // this is a popup window
                            NewJournalEntry()
                        }
                    }
                    // create a journal entry button

                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                // Journal View
                    
            }.tabItem({
                Text("Journal")
                Image(systemName: "3.circle")
            }).tag(2)
                .background(Color("AppColor"))
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadSky()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
