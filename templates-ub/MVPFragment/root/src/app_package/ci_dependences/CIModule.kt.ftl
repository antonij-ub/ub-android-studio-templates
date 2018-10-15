package ${applicationPackage}.di.modules

import ${applicationPackage}.di.scopes.${scope}
import ${escapeKotlinIdentifiers(packageName)}.interactors.${interactor}
import ${escapeKotlinIdentifiers(packageName)}.repositories.${repository}
import ${escapeKotlinIdentifiers(packageName)}.repositories.${interfaceRepository}
import dagger.Module
import dagger.Provides

@Module
class ${module} {

    @Provides
    @${scope}
    fun provideRepository(): ${interfaceRepository} {
        return ${repository}()
    }

    @Provides
    @${scope}
    fun provideInteractor(repository: ${interfaceRepository}): ${interactor} {
        return ${interactor}(repository)
    }
}