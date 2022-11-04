

// click Navigation Link
// Tenemos una NavigationView que tiene una Lista de cursos
//Cada Celda ES un Navigation Link a la lISTADETAILVIEW(View) que corresponde a la
// Fila (course: self.course[Idx] es el id que identfica al curso que se muestra en ese momento.


import SwiftUI

struct Listas: View {
    var courses = [
        Course(name: "Probabilidad y variables Aleatorias para MA", image:"Capa"),
        Course(name: "Viaje por Crucero", image: "Premium",feature: true),
        Course(name: "Delivery envio a domicilio" , image: "Delivery"),
        Course(name:  "Cara feliz dia especial,aniversario", image: "Boat" ),
        Course(name: "Importacion de productos vendidos", image: "Apple")
        
    ]
 
    //1.-.configurar apariencia    Apariencias de la barra de navegacion..
    init(){
        
        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [.font: UIFont(name: "Times New Roman", size: 32)!,.foregroundColor:UIColor.systemRed
        ]
        // cambiar el texto normal
        appearance.titleTextAttributes = [
            .font: UIFont(name: "Arial", size: 25)!,
            .foregroundColor : UIColor.systemGreen
        ]
        //Boton  de comeCocos <
        appearance.setBackIndicatorImage(UIImage(systemName: "arrow.left.circle.fill"), transitionMaskImage: UIImage(systemName: "arrow.left.circle")
        )
        // 2.- Invocar
        // color del titulo interno en transicion ala principal
        UINavigationBar.appearance().tintColor = .green
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
    
    var body: some View {
        //1.-
        NavigationView{
            // destacar un Course
            List(courses.indices, id: \.self) { idx in
                //2.                                            course x el indice
                NavigationLink(destination:ListaDetailView(course: self.courses[idx])){
                    if self.courses[idx].feature{
                        CoursesfullImageRow(course:self.courses [idx])
                    }else{
                        CourseRow(course: self.courses[idx])
                        
                    }
                }
            }
//            .listStyle(.plain)
            .navigationBarTitle("Cursos Online Gomila Juan Gabriel",
                                displayMode: .inline)
        
             
        }
        
    }
 
    //id.id
    //genera un numero unico aleatorio
    //UUID() nro de 128 bit
    
    struct CourseRow: View {
        var course : Course
        var body: some View {
            HStack(spacing: 10){
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50,height: 50)
                    .clipped()
                    .cornerRadius(25)
                
                Text(course.name)
            }
        }
    }
    
    struct CoursesfullImageRow: View {
        var course : Course
        var body: some View {
            
            ZStack{
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .padding()
                    .cornerRadius(15)
                  
                
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(.gray)
                            .opacity(0.20)
                    )
                Text(course.name)
                    
                    .font(.system(.subheadline ,design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
            }
        }
    }
}

struct Course: Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var feature : Bool = false
    
}
    struct Listas_Previews: PreviewProvider {
        static var previews: some View {
            Listas()
            //        CoursesfullImageRow()
        }
    }
