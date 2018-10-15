@Component(modules = [
    ,
    ${moduleName}
])
interface AppComponent {

    fun inject(${moduleName}.uncapitalize(): ${moduleName}): ${daggerComponent}
}